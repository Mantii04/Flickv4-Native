package r;

import java.util.Arrays;

/* renamed from: r.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1528a implements InterfaceC1529b {

    /* renamed from: b, reason: collision with root package name */
    public final C1530c f19657b;

    /* renamed from: c, reason: collision with root package name */
    public final C1531d f19658c;

    /* renamed from: a, reason: collision with root package name */
    public int f19656a = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f19659d = 8;

    /* renamed from: e, reason: collision with root package name */
    public int[] f19660e = new int[8];

    /* renamed from: f, reason: collision with root package name */
    public int[] f19661f = new int[8];

    /* renamed from: g, reason: collision with root package name */
    public float[] f19662g = new float[8];

    /* renamed from: h, reason: collision with root package name */
    public int f19663h = -1;

    /* renamed from: i, reason: collision with root package name */
    public int f19664i = -1;

    /* renamed from: j, reason: collision with root package name */
    public boolean f19665j = false;

    public C1528a(C1530c c1530c, C1531d c1531d) {
        this.f19657b = c1530c;
        this.f19658c = c1531d;
    }

    @Override // r.InterfaceC1529b
    public void add(m mVar, float f3, boolean z6) {
        if (f3 <= -0.001f || f3 >= 0.001f) {
            int i2 = this.f19663h;
            C1530c c1530c = this.f19657b;
            if (i2 == -1) {
                this.f19663h = 0;
                this.f19662g[0] = f3;
                this.f19660e[0] = mVar.f19700e;
                this.f19661f[0] = -1;
                mVar.f19710u++;
                mVar.addToRow(c1530c);
                this.f19656a++;
                if (this.f19665j) {
                    return;
                }
                int i7 = this.f19664i + 1;
                this.f19664i = i7;
                int[] iArr = this.f19660e;
                if (i7 >= iArr.length) {
                    this.f19665j = true;
                    this.f19664i = iArr.length - 1;
                    return;
                }
                return;
            }
            int i8 = -1;
            for (int i9 = 0; i2 != -1 && i9 < this.f19656a; i9++) {
                int i10 = this.f19660e[i2];
                int i11 = mVar.f19700e;
                if (i10 == i11) {
                    float[] fArr = this.f19662g;
                    float f7 = fArr[i2] + f3;
                    if (f7 > -0.001f && f7 < 0.001f) {
                        f7 = 0.0f;
                    }
                    fArr[i2] = f7;
                    if (f7 == 0.0f) {
                        if (i2 == this.f19663h) {
                            this.f19663h = this.f19661f[i2];
                        } else {
                            int[] iArr2 = this.f19661f;
                            iArr2[i8] = iArr2[i2];
                        }
                        if (z6) {
                            mVar.removeFromRow(c1530c);
                        }
                        if (this.f19665j) {
                            this.f19664i = i2;
                        }
                        mVar.f19710u--;
                        this.f19656a--;
                        return;
                    }
                    return;
                }
                if (i10 < i11) {
                    i8 = i2;
                }
                i2 = this.f19661f[i2];
            }
            int i12 = this.f19664i;
            int i13 = i12 + 1;
            if (this.f19665j) {
                int[] iArr3 = this.f19660e;
                if (iArr3[i12] != -1) {
                    i12 = iArr3.length;
                }
            } else {
                i12 = i13;
            }
            int[] iArr4 = this.f19660e;
            if (i12 >= iArr4.length && this.f19656a < iArr4.length) {
                int i14 = 0;
                while (true) {
                    int[] iArr5 = this.f19660e;
                    if (i14 >= iArr5.length) {
                        break;
                    }
                    if (iArr5[i14] == -1) {
                        i12 = i14;
                        break;
                    }
                    i14++;
                }
            }
            int[] iArr6 = this.f19660e;
            if (i12 >= iArr6.length) {
                i12 = iArr6.length;
                int i15 = this.f19659d * 2;
                this.f19659d = i15;
                this.f19665j = false;
                this.f19664i = i12 - 1;
                this.f19662g = Arrays.copyOf(this.f19662g, i15);
                this.f19660e = Arrays.copyOf(this.f19660e, this.f19659d);
                this.f19661f = Arrays.copyOf(this.f19661f, this.f19659d);
            }
            this.f19660e[i12] = mVar.f19700e;
            this.f19662g[i12] = f3;
            if (i8 != -1) {
                int[] iArr7 = this.f19661f;
                iArr7[i12] = iArr7[i8];
                iArr7[i8] = i12;
            } else {
                this.f19661f[i12] = this.f19663h;
                this.f19663h = i12;
            }
            mVar.f19710u++;
            mVar.addToRow(c1530c);
            this.f19656a++;
            if (!this.f19665j) {
                this.f19664i++;
            }
            int i16 = this.f19664i;
            int[] iArr8 = this.f19660e;
            if (i16 >= iArr8.length) {
                this.f19665j = true;
                this.f19664i = iArr8.length - 1;
            }
        }
    }

    @Override // r.InterfaceC1529b
    public final void clear() {
        int i2 = this.f19663h;
        for (int i7 = 0; i2 != -1 && i7 < this.f19656a; i7++) {
            m mVar = this.f19658c.f19673c[this.f19660e[i2]];
            if (mVar != null) {
                mVar.removeFromRow(this.f19657b);
            }
            i2 = this.f19661f[i2];
        }
        this.f19663h = -1;
        this.f19664i = -1;
        this.f19665j = false;
        this.f19656a = 0;
    }

    @Override // r.InterfaceC1529b
    public boolean contains(m mVar) {
        int i2 = this.f19663h;
        if (i2 == -1) {
            return false;
        }
        for (int i7 = 0; i2 != -1 && i7 < this.f19656a; i7++) {
            if (this.f19660e[i2] == mVar.f19700e) {
                return true;
            }
            i2 = this.f19661f[i2];
        }
        return false;
    }

    @Override // r.InterfaceC1529b
    public void divideByAmount(float f3) {
        int i2 = this.f19663h;
        for (int i7 = 0; i2 != -1 && i7 < this.f19656a; i7++) {
            float[] fArr = this.f19662g;
            fArr[i2] = fArr[i2] / f3;
            i2 = this.f19661f[i2];
        }
    }

    @Override // r.InterfaceC1529b
    public final float get(m mVar) {
        int i2 = this.f19663h;
        for (int i7 = 0; i2 != -1 && i7 < this.f19656a; i7++) {
            if (this.f19660e[i2] == mVar.f19700e) {
                return this.f19662g[i2];
            }
            i2 = this.f19661f[i2];
        }
        return 0.0f;
    }

    @Override // r.InterfaceC1529b
    public int getCurrentSize() {
        return this.f19656a;
    }

    @Override // r.InterfaceC1529b
    public m getVariable(int i2) {
        int i7 = this.f19663h;
        for (int i8 = 0; i7 != -1 && i8 < this.f19656a; i8++) {
            if (i8 == i2) {
                return this.f19658c.f19673c[this.f19660e[i7]];
            }
            i7 = this.f19661f[i7];
        }
        return null;
    }

    @Override // r.InterfaceC1529b
    public float getVariableValue(int i2) {
        int i7 = this.f19663h;
        for (int i8 = 0; i7 != -1 && i8 < this.f19656a; i8++) {
            if (i8 == i2) {
                return this.f19662g[i7];
            }
            i7 = this.f19661f[i7];
        }
        return 0.0f;
    }

    @Override // r.InterfaceC1529b
    public void invert() {
        int i2 = this.f19663h;
        for (int i7 = 0; i2 != -1 && i7 < this.f19656a; i7++) {
            float[] fArr = this.f19662g;
            fArr[i2] = fArr[i2] * (-1.0f);
            i2 = this.f19661f[i2];
        }
    }

    @Override // r.InterfaceC1529b
    public final void put(m mVar, float f3) {
        if (f3 == 0.0f) {
            remove(mVar, true);
            return;
        }
        int i2 = this.f19663h;
        C1530c c1530c = this.f19657b;
        if (i2 == -1) {
            this.f19663h = 0;
            this.f19662g[0] = f3;
            this.f19660e[0] = mVar.f19700e;
            this.f19661f[0] = -1;
            mVar.f19710u++;
            mVar.addToRow(c1530c);
            this.f19656a++;
            if (this.f19665j) {
                return;
            }
            int i7 = this.f19664i + 1;
            this.f19664i = i7;
            int[] iArr = this.f19660e;
            if (i7 >= iArr.length) {
                this.f19665j = true;
                this.f19664i = iArr.length - 1;
                return;
            }
            return;
        }
        int i8 = -1;
        for (int i9 = 0; i2 != -1 && i9 < this.f19656a; i9++) {
            int i10 = this.f19660e[i2];
            int i11 = mVar.f19700e;
            if (i10 == i11) {
                this.f19662g[i2] = f3;
                return;
            }
            if (i10 < i11) {
                i8 = i2;
            }
            i2 = this.f19661f[i2];
        }
        int i12 = this.f19664i;
        int i13 = i12 + 1;
        if (this.f19665j) {
            int[] iArr2 = this.f19660e;
            if (iArr2[i12] != -1) {
                i12 = iArr2.length;
            }
        } else {
            i12 = i13;
        }
        int[] iArr3 = this.f19660e;
        if (i12 >= iArr3.length && this.f19656a < iArr3.length) {
            int i14 = 0;
            while (true) {
                int[] iArr4 = this.f19660e;
                if (i14 >= iArr4.length) {
                    break;
                }
                if (iArr4[i14] == -1) {
                    i12 = i14;
                    break;
                }
                i14++;
            }
        }
        int[] iArr5 = this.f19660e;
        if (i12 >= iArr5.length) {
            i12 = iArr5.length;
            int i15 = this.f19659d * 2;
            this.f19659d = i15;
            this.f19665j = false;
            this.f19664i = i12 - 1;
            this.f19662g = Arrays.copyOf(this.f19662g, i15);
            this.f19660e = Arrays.copyOf(this.f19660e, this.f19659d);
            this.f19661f = Arrays.copyOf(this.f19661f, this.f19659d);
        }
        this.f19660e[i12] = mVar.f19700e;
        this.f19662g[i12] = f3;
        if (i8 != -1) {
            int[] iArr6 = this.f19661f;
            iArr6[i12] = iArr6[i8];
            iArr6[i8] = i12;
        } else {
            this.f19661f[i12] = this.f19663h;
            this.f19663h = i12;
        }
        mVar.f19710u++;
        mVar.addToRow(c1530c);
        int i16 = this.f19656a + 1;
        this.f19656a = i16;
        if (!this.f19665j) {
            this.f19664i++;
        }
        int[] iArr7 = this.f19660e;
        if (i16 >= iArr7.length) {
            this.f19665j = true;
        }
        if (this.f19664i >= iArr7.length) {
            this.f19665j = true;
            this.f19664i = iArr7.length - 1;
        }
    }

    @Override // r.InterfaceC1529b
    public final float remove(m mVar, boolean z6) {
        int i2 = this.f19663h;
        if (i2 == -1) {
            return 0.0f;
        }
        int i7 = 0;
        int i8 = -1;
        while (i2 != -1 && i7 < this.f19656a) {
            if (this.f19660e[i2] == mVar.f19700e) {
                if (i2 == this.f19663h) {
                    this.f19663h = this.f19661f[i2];
                } else {
                    int[] iArr = this.f19661f;
                    iArr[i8] = iArr[i2];
                }
                if (z6) {
                    mVar.removeFromRow(this.f19657b);
                }
                mVar.f19710u--;
                this.f19656a--;
                this.f19660e[i2] = -1;
                if (this.f19665j) {
                    this.f19664i = i2;
                }
                return this.f19662g[i2];
            }
            i7++;
            i8 = i2;
            i2 = this.f19661f[i2];
        }
        return 0.0f;
    }

    public String toString() {
        int i2 = this.f19663h;
        String str = "";
        for (int i7 = 0; i2 != -1 && i7 < this.f19656a; i7++) {
            StringBuilder o6 = b.c.o(A.i.B(str, " -> "));
            o6.append(this.f19662g[i2]);
            o6.append(" : ");
            StringBuilder o7 = b.c.o(o6.toString());
            o7.append(this.f19658c.f19673c[this.f19660e[i2]]);
            str = o7.toString();
            i2 = this.f19661f[i2];
        }
        return str;
    }

    @Override // r.InterfaceC1529b
    public float use(C1530c c1530c, boolean z6) {
        float f3 = get(c1530c.f19666a);
        remove(c1530c.f19666a, z6);
        InterfaceC1529b interfaceC1529b = c1530c.f19669d;
        int currentSize = interfaceC1529b.getCurrentSize();
        for (int i2 = 0; i2 < currentSize; i2++) {
            m variable = interfaceC1529b.getVariable(i2);
            add(variable, interfaceC1529b.get(variable) * f3, z6);
        }
        return f3;
    }
}
