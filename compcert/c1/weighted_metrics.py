"""Independent static loop-weighted metrics from saved CFG and Linear events."""
def metrics(row):
    graph={pc:targets for pc,kind,targets in row['cfg']}
    kind={pc:k for pc,k,targets in row['cfg']}
    reverse={u:[] for u in graph}
    for u,targets in graph.items():
        for v in targets:reverse[v].append(u)
    seen=set();finished=[]
    for seed in graph:
        if seed in seen:continue
        seen.add(seed);stack=[(seed,iter(graph[seed]))]
        while stack:
            u,children=stack[-1]
            v=next(children,None)
            if v is None:finished.append(u);stack.pop()
            elif v not in seen:seen.add(v);stack.append((v,iter(graph[v])))
    components={}
    for seed in reversed(finished):
        if seed in components:continue
        components[seed]=seed;todo=[seed]
        while todo:
            for v in reverse[todo.pop()]:
                if v not in components:components[v]=seed;todo.append(v)
    weight=lambda u,v:8 if components[u]==components[v] else 1
    events=row['linear_events'];labels=[i for i,e in enumerate(events) if e[0]=='label']
    total=reward=falls=0
    for j,start in enumerate(labels):
        u=events[start][1]
        if kind[u] not in ['branch','cond']:continue
        total+=sum(weight(u,v) for v in graph[u])
        end=labels[j+1] if j+1<len(labels) else len(events)
        if any(e[0]=='goto' for e in events[start+1:end]):continue
        continuation=set();i=end
        while i<len(events) and events[i][0]=='label':
            continuation.add(events[i][1]);i+=1
        choices=[v for v in graph[u] if v in continuation]
        assert choices,(row['function'],u)
        falls+=1;reward+=weight(u,choices[0])
    assert falls==row['fallthrough_edges'],row['function']
    return dict(loop_weighted_eligible=total,loop_weighted_fallthrough=reward,
                loop_weighted_fallthrough_rate=reward/total if total else None)
