#!/usr/bin/env bash
# Print the highest-id idle GPU among 7..4 (no compute process, 0% util, 0 MiB), else exit 1.
apps=$(nvidia-smi --query-compute-apps=gpu_uuid --format=csv,noheader)
for i in 7 6 5 4; do
  read -r u util mem < <(nvidia-smi -i $i --query-gpu=uuid,utilization.gpu,memory.used --format=csv,noheader,nounits | tr -d ',')
  if ! grep -q "$u" <<<"$apps" && [ "$util" = 0 ] && [ "$mem" = 0 ]; then echo $i; exit 0; fi
done
exit 1
