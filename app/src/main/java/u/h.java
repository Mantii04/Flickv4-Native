package u;

import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import java.util.ArrayList;
import r.C1533f;

/* loaded from: classes.dex */
public final class h extends m {

    /* renamed from: a1, reason: collision with root package name */
    public e[] f20207a1;

    /* renamed from: D0, reason: collision with root package name */
    public int f20184D0 = -1;

    /* renamed from: E0, reason: collision with root package name */
    public int f20185E0 = -1;

    /* renamed from: F0, reason: collision with root package name */
    public int f20186F0 = -1;

    /* renamed from: G0, reason: collision with root package name */
    public int f20187G0 = -1;

    /* renamed from: H0, reason: collision with root package name */
    public int f20188H0 = -1;

    /* renamed from: I0, reason: collision with root package name */
    public int f20189I0 = -1;

    /* renamed from: J0, reason: collision with root package name */
    public float f20190J0 = 0.5f;

    /* renamed from: K0, reason: collision with root package name */
    public float f20191K0 = 0.5f;

    /* renamed from: L0, reason: collision with root package name */
    public float f20192L0 = 0.5f;

    /* renamed from: M0, reason: collision with root package name */
    public float f20193M0 = 0.5f;

    /* renamed from: N0, reason: collision with root package name */
    public float f20194N0 = 0.5f;

    /* renamed from: O0, reason: collision with root package name */
    public float f20195O0 = 0.5f;

    /* renamed from: P0, reason: collision with root package name */
    public int f20196P0 = 0;

    /* renamed from: Q0, reason: collision with root package name */
    public int f20197Q0 = 0;

    /* renamed from: R0, reason: collision with root package name */
    public int f20198R0 = 2;

    /* renamed from: S0, reason: collision with root package name */
    public int f20199S0 = 2;

    /* renamed from: T0, reason: collision with root package name */
    public int f20200T0 = 0;

    /* renamed from: U0, reason: collision with root package name */
    public int f20201U0 = -1;

    /* renamed from: V0, reason: collision with root package name */
    public int f20202V0 = 0;

    /* renamed from: W0, reason: collision with root package name */
    public final ArrayList f20203W0 = new ArrayList();

    /* renamed from: X0, reason: collision with root package name */
    public e[] f20204X0 = null;

    /* renamed from: Y0, reason: collision with root package name */
    public e[] f20205Y0 = null;

    /* renamed from: Z0, reason: collision with root package name */
    public int[] f20206Z0 = null;

    /* renamed from: b1, reason: collision with root package name */
    public int f20208b1 = 0;

    @Override // u.e
    public void addToSolver(C1533f c1533f, boolean z6) {
        e eVar;
        float f3;
        int i2;
        super.addToSolver(c1533f, z6);
        boolean z7 = getParent() != null && ((f) getParent()).isRtl();
        int i7 = this.f20200T0;
        ArrayList arrayList = this.f20203W0;
        if (i7 != 0) {
            if (i7 == 1) {
                int size = arrayList.size();
                int i8 = 0;
                while (i8 < size) {
                    ((g) arrayList.get(i8)).createConstraints(z7, i8, i8 == size + (-1));
                    i8++;
                }
            } else if (i7 != 2) {
                if (i7 == 3) {
                    int size2 = arrayList.size();
                    int i9 = 0;
                    while (i9 < size2) {
                        ((g) arrayList.get(i9)).createConstraints(z7, i9, i9 == size2 + (-1));
                        i9++;
                    }
                }
            } else if (this.f20206Z0 != null && this.f20205Y0 != null && this.f20204X0 != null) {
                for (int i10 = 0; i10 < this.f20208b1; i10++) {
                    this.f20207a1[i10].resetAnchors();
                }
                int[] iArr = this.f20206Z0;
                int i11 = iArr[0];
                int i12 = iArr[1];
                float f7 = this.f20190J0;
                e eVar2 = null;
                int i13 = 0;
                while (i13 < i11) {
                    if (z7) {
                        i2 = (i11 - i13) - 1;
                        f3 = 1.0f - this.f20190J0;
                    } else {
                        f3 = f7;
                        i2 = i13;
                    }
                    e eVar3 = this.f20205Y0[i2];
                    if (eVar3 != null && eVar3.getVisibility() != 8) {
                        d dVar = eVar3.f20085I;
                        if (i13 == 0) {
                            eVar3.connect(dVar, this.f20085I, getPaddingLeft());
                            eVar3.setHorizontalChainStyle(this.f20184D0);
                            eVar3.setHorizontalBiasPercent(f3);
                        }
                        if (i13 == i11 - 1) {
                            eVar3.connect(eVar3.f20087K, this.f20087K, getPaddingRight());
                        }
                        if (i13 > 0 && eVar2 != null) {
                            int i14 = this.f20196P0;
                            d dVar2 = eVar2.f20087K;
                            eVar3.connect(dVar, dVar2, i14);
                            eVar2.connect(dVar2, dVar, 0);
                        }
                        eVar2 = eVar3;
                    }
                    i13++;
                    f7 = f3;
                }
                for (int i15 = 0; i15 < i12; i15++) {
                    e eVar4 = this.f20204X0[i15];
                    if (eVar4 != null && eVar4.getVisibility() != 8) {
                        d dVar3 = eVar4.f20086J;
                        if (i15 == 0) {
                            eVar4.connect(dVar3, this.f20086J, getPaddingTop());
                            eVar4.setVerticalChainStyle(this.f20185E0);
                            eVar4.setVerticalBiasPercent(this.f20191K0);
                        }
                        if (i15 == i12 - 1) {
                            eVar4.connect(eVar4.f20088L, this.f20088L, getPaddingBottom());
                        }
                        if (i15 > 0 && eVar2 != null) {
                            int i16 = this.f20197Q0;
                            d dVar4 = eVar2.f20088L;
                            eVar4.connect(dVar3, dVar4, i16);
                            eVar2.connect(dVar4, dVar3, 0);
                        }
                        eVar2 = eVar4;
                    }
                }
                for (int i17 = 0; i17 < i11; i17++) {
                    for (int i18 = 0; i18 < i12; i18++) {
                        int i19 = (i18 * i11) + i17;
                        if (this.f20202V0 == 1) {
                            i19 = (i17 * i12) + i18;
                        }
                        e[] eVarArr = this.f20207a1;
                        if (i19 < eVarArr.length && (eVar = eVarArr[i19]) != null && eVar.getVisibility() != 8) {
                            e eVar5 = this.f20205Y0[i17];
                            e eVar6 = this.f20204X0[i18];
                            if (eVar != eVar5) {
                                eVar.connect(eVar.f20085I, eVar5.f20085I, 0);
                                eVar.connect(eVar.f20087K, eVar5.f20087K, 0);
                            }
                            if (eVar != eVar6) {
                                eVar.connect(eVar.f20086J, eVar6.f20086J, 0);
                                eVar.connect(eVar.f20088L, eVar6.f20088L, 0);
                            }
                        }
                    }
                }
            }
        } else if (arrayList.size() > 0) {
            ((g) arrayList.get(0)).createConstraints(z7, 0, true);
        }
        needsCallbackFromSolver(false);
    }

    public final int g(e eVar, int i2) {
        e eVar2;
        if (eVar == null) {
            return 0;
        }
        if (eVar.getVerticalDimensionBehaviour() == ConstraintWidget$DimensionBehaviour.f5241f) {
            int i7 = eVar.f20137s;
            if (i7 == 0) {
                return 0;
            }
            if (i7 == 2) {
                int i8 = (int) (eVar.f20144z * i2);
                if (i8 != eVar.getHeight()) {
                    eVar.setMeasureRequested(true);
                    measure(eVar, eVar.getHorizontalDimensionBehaviour(), eVar.getWidth(), ConstraintWidget$DimensionBehaviour.f5239b, i8);
                }
                return i8;
            }
            eVar2 = eVar;
            if (i7 == 1) {
                return eVar2.getHeight();
            }
            if (i7 == 3) {
                return (int) ((eVar2.getWidth() * eVar2.f20100X) + 0.5f);
            }
        } else {
            eVar2 = eVar;
        }
        return eVar2.getHeight();
    }

    public final int h(e eVar, int i2) {
        e eVar2;
        if (eVar == null) {
            return 0;
        }
        if (eVar.getHorizontalDimensionBehaviour() == ConstraintWidget$DimensionBehaviour.f5241f) {
            int i7 = eVar.f20136r;
            if (i7 == 0) {
                return 0;
            }
            if (i7 == 2) {
                int i8 = (int) (eVar.f20141w * i2);
                if (i8 != eVar.getWidth()) {
                    eVar.setMeasureRequested(true);
                    measure(eVar, ConstraintWidget$DimensionBehaviour.f5239b, i8, eVar.getVerticalDimensionBehaviour(), eVar.getHeight());
                }
                return i8;
            }
            eVar2 = eVar;
            if (i7 == 1) {
                return eVar2.getWidth();
            }
            if (i7 == 3) {
                return (int) ((eVar2.getHeight() * eVar2.f20100X) + 0.5f);
            }
        } else {
            eVar2 = eVar;
        }
        return eVar2.getWidth();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0660  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0677  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0695  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0698  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x067a  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0665  */
    /* JADX WARN: Type inference failed for: r35v0 */
    /* JADX WARN: Type inference failed for: r35v1 */
    /* JADX WARN: Type inference failed for: r35v2 */
    /* JADX WARN: Type inference failed for: r35v5 */
    @Override // u.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void measure(int r37, int r38, int r39, int r40) {
        /*
            Method dump skipped, instructions count: 1694
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: u.h.measure(int, int, int, int):void");
    }

    public void setFirstHorizontalBias(float f3) {
        this.f20192L0 = f3;
    }

    public void setFirstHorizontalStyle(int i2) {
        this.f20186F0 = i2;
    }

    public void setFirstVerticalBias(float f3) {
        this.f20193M0 = f3;
    }

    public void setFirstVerticalStyle(int i2) {
        this.f20187G0 = i2;
    }

    public void setHorizontalAlign(int i2) {
        this.f20198R0 = i2;
    }

    public void setHorizontalBias(float f3) {
        this.f20190J0 = f3;
    }

    public void setHorizontalGap(int i2) {
        this.f20196P0 = i2;
    }

    public void setHorizontalStyle(int i2) {
        this.f20184D0 = i2;
    }

    public void setLastHorizontalBias(float f3) {
        this.f20194N0 = f3;
    }

    public void setLastHorizontalStyle(int i2) {
        this.f20188H0 = i2;
    }

    public void setLastVerticalBias(float f3) {
        this.f20195O0 = f3;
    }

    public void setLastVerticalStyle(int i2) {
        this.f20189I0 = i2;
    }

    public void setMaxElementsWrap(int i2) {
        this.f20201U0 = i2;
    }

    public void setOrientation(int i2) {
        this.f20202V0 = i2;
    }

    public void setVerticalAlign(int i2) {
        this.f20199S0 = i2;
    }

    public void setVerticalBias(float f3) {
        this.f20191K0 = f3;
    }

    public void setVerticalGap(int i2) {
        this.f20197Q0 = i2;
    }

    public void setVerticalStyle(int i2) {
        this.f20185E0 = i2;
    }

    public void setWrapMode(int i2) {
        this.f20200T0 = i2;
    }
}
