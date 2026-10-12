// Exact four CryptoAction constructors and old/new IsAuthAttr expressions from
// DynamoDbEncryption/dafny/StructuredEncryption at commit 3194054.
datatype CryptoAction = ENCRYPT_AND_SIGN
                      | SIGN_AND_INCLUDE_IN_ENCRYPTION_CONTEXT
                      | SIGN_ONLY
                      | DO_NOTHING

function Old(x: CryptoAction): bool {
  x.ENCRYPT_AND_SIGN? || x.SIGN_AND_INCLUDE_IN_ENCRYPTION_CONTEXT? || x.SIGN_ONLY?
}

function New(x: CryptoAction): bool {
  !x.DO_NOTHING?
}

lemma IsAuthAttrEquivalent()
  ensures forall x: CryptoAction :: Old(x) == New(x)
{
}
