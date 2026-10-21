package com.fasterxml.jackson.core.sym;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class NameN extends Name {

    /* renamed from: q, reason: collision with root package name */
    private final int[] f9470q;

    /* renamed from: q1, reason: collision with root package name */
    private final int f9471q1;

    /* renamed from: q2, reason: collision with root package name */
    private final int f9472q2;

    /* renamed from: q3, reason: collision with root package name */
    private final int f9473q3;

    /* renamed from: q4, reason: collision with root package name */
    private final int f9474q4;
    private final int qlen;

    public NameN(String str, int i2, int i7, int i8, int i9, int i10, int[] iArr, int i11) {
        super(str, i2);
        this.f9471q1 = i7;
        this.f9472q2 = i8;
        this.f9473q3 = i9;
        this.f9474q4 = i10;
        this.f9470q = iArr;
        this.qlen = i11;
    }

    private final boolean _equals2(int[] iArr) {
        int i2 = this.qlen - 4;
        for (int i7 = 0; i7 < i2; i7++) {
            if (iArr[i7 + 4] != this.f9470q[i7]) {
                return false;
            }
        }
        return true;
    }

    public static NameN construct(String str, int i2, int[] iArr, int i7) {
        if (i7 >= 4) {
            return new NameN(str, i2, iArr[0], iArr[1], iArr[2], iArr[3], i7 + (-4) > 0 ? Arrays.copyOfRange(iArr, 4, i7) : null, i7);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i2) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i2, int i7) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i2, int i7, int i8) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int[] iArr, int i2) {
        if (i2 != this.qlen || iArr[0] != this.f9471q1 || iArr[1] != this.f9472q2 || iArr[2] != this.f9473q3 || iArr[3] != this.f9474q4) {
            return false;
        }
        switch (i2) {
            case 8:
                if (iArr[7] != this.f9470q[3]) {
                }
                break;
            case 7:
                if (iArr[6] != this.f9470q[2]) {
                }
                break;
            case 6:
                if (iArr[5] != this.f9470q[1]) {
                }
                break;
            case 5:
                if (iArr[4] != this.f9470q[0]) {
                }
                break;
            case 4:
                return true;
        }
        return false;
    }
}
