pragma circom 2.1.7;

template Multiply() {
	signal input a;
	signal input b;
	signal output out <== a * b;
}

component main = Multiply();