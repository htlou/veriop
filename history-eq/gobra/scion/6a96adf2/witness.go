package main

import (
	"crypto/ecdsa"
	"crypto/elliptic"
	"crypto/sha256"
	"encoding/asn1"
	"errors"
	"fmt"
	"math/big"
)

// The two functions copy the changed ECDSA case in historical Verify.
func oldCase(pub *ecdsa.PublicKey, input, signature []byte) error {
	type ecdsaSignature struct {
		R, S *big.Int
	}
	var sig ecdsaSignature
	if rest, err := asn1.Unmarshal(signature, &sig); err != nil {
		return err
	} else if len(rest) != 0 {
		return errors.New("trailing data after ECDSA signature")
	}
	if sig.R.Sign() <= 0 || sig.S.Sign() <= 0 {
		return errors.New("ECDSA signature contained zero or negative values")
	}
	if !ecdsa.Verify(pub, input, sig.R, sig.S) {
		return errors.New("ECDSA verification failure")
	}
	return nil
}

func newCase(pub *ecdsa.PublicKey, input, signature []byte) error {
	if !ecdsa.VerifyASN1(pub, input, signature) {
		return errors.New("ECDSA verification failure")
	}
	return nil
}

func main() {
	curve := elliptic.P256()
	pub := &ecdsa.PublicKey{Curve: curve, X: curve.Params().Gx, Y: curve.Params().Gy}
	input := sha256.Sum256([]byte("valid header and body"))
	signature := []byte{0x00}
	oldErr := oldCase(pub, input[:], signature)
	newErr := newCase(pub, input[:], signature)
	if oldErr == nil || newErr == nil || oldErr.Error() == newErr.Error() ||
		newErr.Error() != "ECDSA verification failure" {
		panic("expected distinct errors for malformed ASN.1 signature")
	}
	fmt.Printf("old: %T: %v\nnew: %T: %v\n", oldErr, oldErr, newErr, newErr)
}
