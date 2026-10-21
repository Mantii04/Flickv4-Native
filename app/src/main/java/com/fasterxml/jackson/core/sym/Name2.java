package com.fasterxml.jackson.core.sym;

/* loaded from: classes.dex */
public final class Name2 extends Name {

    /* renamed from: q1, reason: collision with root package name */
    private final int f9465q1;

    /* renamed from: q2, reason: collision with root package name */
    private final int f9466q2;

    public Name2(String str, int i2, int i7, int i8) {
        super(str, i2);
        this.f9465q1 = i7;
        this.f9466q2 = i8;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i2) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i2, int i7, int i8) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i2, int i7) {
        return i2 == this.f9465q1 && i7 == this.f9466q2;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int[] iArr, int i2) {
        return i2 == 2 && iArr[0] == this.f9465q1 && iArr[1] == this.f9466q2;
    }
}
