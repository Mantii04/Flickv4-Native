package u;

import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public int f20166a;

    /* renamed from: d, reason: collision with root package name */
    public d f20169d;

    /* renamed from: e, reason: collision with root package name */
    public d f20170e;

    /* renamed from: f, reason: collision with root package name */
    public d f20171f;

    /* renamed from: g, reason: collision with root package name */
    public d f20172g;

    /* renamed from: h, reason: collision with root package name */
    public int f20173h;

    /* renamed from: i, reason: collision with root package name */
    public int f20174i;

    /* renamed from: j, reason: collision with root package name */
    public int f20175j;

    /* renamed from: k, reason: collision with root package name */
    public int f20176k;

    /* renamed from: q, reason: collision with root package name */
    public int f20182q;

    /* renamed from: r, reason: collision with root package name */
    public final /* synthetic */ h f20183r;

    /* renamed from: b, reason: collision with root package name */
    public e f20167b = null;

    /* renamed from: c, reason: collision with root package name */
    public int f20168c = 0;

    /* renamed from: l, reason: collision with root package name */
    public int f20177l = 0;

    /* renamed from: m, reason: collision with root package name */
    public int f20178m = 0;

    /* renamed from: n, reason: collision with root package name */
    public int f20179n = 0;

    /* renamed from: o, reason: collision with root package name */
    public int f20180o = 0;

    /* renamed from: p, reason: collision with root package name */
    public int f20181p = 0;

    public g(h hVar, int i2, d dVar, d dVar2, d dVar3, d dVar4, int i7) {
        this.f20183r = hVar;
        this.f20173h = 0;
        this.f20174i = 0;
        this.f20175j = 0;
        this.f20176k = 0;
        this.f20182q = 0;
        this.f20166a = i2;
        this.f20169d = dVar;
        this.f20170e = dVar2;
        this.f20171f = dVar3;
        this.f20172g = dVar4;
        this.f20173h = hVar.getPaddingLeft();
        this.f20174i = hVar.getPaddingTop();
        this.f20175j = hVar.getPaddingRight();
        this.f20176k = hVar.getPaddingBottom();
        this.f20182q = i7;
    }

    public void add(e eVar) {
        int i2 = this.f20166a;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.f5241f;
        h hVar = this.f20183r;
        if (i2 == 0) {
            int h7 = hVar.h(eVar, this.f20182q);
            if (eVar.getHorizontalDimensionBehaviour() == constraintWidget$DimensionBehaviour) {
                this.f20181p++;
                h7 = 0;
            }
            this.f20177l = h7 + (eVar.getVisibility() != 8 ? hVar.f20196P0 : 0) + this.f20177l;
            int g7 = hVar.g(eVar, this.f20182q);
            if (this.f20167b == null || this.f20168c < g7) {
                this.f20167b = eVar;
                this.f20168c = g7;
                this.f20178m = g7;
            }
        } else {
            int h8 = hVar.h(eVar, this.f20182q);
            int g8 = hVar.g(eVar, this.f20182q);
            if (eVar.getVerticalDimensionBehaviour() == constraintWidget$DimensionBehaviour) {
                this.f20181p++;
                g8 = 0;
            }
            this.f20178m = g8 + (eVar.getVisibility() != 8 ? hVar.f20197Q0 : 0) + this.f20178m;
            if (this.f20167b == null || this.f20168c < h8) {
                this.f20167b = eVar;
                this.f20168c = h8;
                this.f20177l = h8;
            }
        }
        this.f20180o++;
    }

    public void clear() {
        this.f20168c = 0;
        this.f20167b = null;
        this.f20177l = 0;
        this.f20178m = 0;
        this.f20179n = 0;
        this.f20180o = 0;
        this.f20181p = 0;
    }

    public void createConstraints(boolean z6, int i2, boolean z7) {
        h hVar;
        int i7;
        int i8;
        int i9;
        e eVar;
        boolean z8;
        int i10;
        int i11;
        int i12 = this.f20180o;
        int i13 = 0;
        while (true) {
            hVar = this.f20183r;
            if (i13 >= i12) {
                break;
            }
            int i14 = this.f20179n;
            if (i14 + i13 >= hVar.f20208b1) {
                break;
            }
            e eVar2 = hVar.f20207a1[i14 + i13];
            if (eVar2 != null) {
                eVar2.resetAnchors();
            }
            i13++;
        }
        if (i12 == 0 || this.f20167b == null) {
            return;
        }
        boolean z9 = z7 && i2 == 0;
        int i15 = -1;
        int i16 = -1;
        for (int i17 = 0; i17 < i12; i17++) {
            int i18 = z6 ? (i12 - 1) - i17 : i17;
            int i19 = this.f20179n;
            if (i19 + i18 >= hVar.f20208b1) {
                break;
            }
            e eVar3 = hVar.f20207a1[i19 + i18];
            if (eVar3 != null && eVar3.getVisibility() == 0) {
                if (i15 == -1) {
                    i15 = i17;
                }
                i16 = i17;
            }
        }
        if (this.f20166a != 0) {
            boolean z10 = z9;
            e eVar4 = this.f20167b;
            eVar4.setHorizontalChainStyle(hVar.f20184D0);
            int i20 = this.f20173h;
            if (i2 > 0) {
                i20 += hVar.f20196P0;
            }
            d dVar = eVar4.f20085I;
            d dVar2 = eVar4.f20087K;
            if (z6) {
                dVar2.connect(this.f20171f, i20);
                if (z7) {
                    dVar.connect(this.f20169d, this.f20175j);
                }
                if (i2 > 0) {
                    this.f20171f.f20071d.f20085I.connect(dVar2, 0);
                }
            } else {
                dVar.connect(this.f20169d, i20);
                if (z7) {
                    dVar2.connect(this.f20171f, this.f20175j);
                }
                if (i2 > 0) {
                    this.f20169d.f20071d.f20087K.connect(dVar, 0);
                }
            }
            int i21 = 0;
            e eVar5 = null;
            while (i21 < i12) {
                int i22 = this.f20179n;
                if (i22 + i21 >= hVar.f20208b1) {
                    return;
                }
                e eVar6 = hVar.f20207a1[i22 + i21];
                if (eVar6 == null) {
                    eVar6 = eVar5;
                } else {
                    d dVar3 = eVar6.f20086J;
                    if (i21 == 0) {
                        eVar6.connect(dVar3, this.f20170e, this.f20174i);
                        int i23 = hVar.f20185E0;
                        float f3 = hVar.f20191K0;
                        if (this.f20179n == 0) {
                            i8 = hVar.f20187G0;
                            i7 = -1;
                            if (i8 != -1) {
                                f3 = hVar.f20193M0;
                                i23 = i8;
                                eVar6.setVerticalChainStyle(i23);
                                eVar6.setVerticalBiasPercent(f3);
                            }
                        } else {
                            i7 = -1;
                        }
                        if (z7 && (i8 = hVar.f20189I0) != i7) {
                            f3 = hVar.f20195O0;
                            i23 = i8;
                        }
                        eVar6.setVerticalChainStyle(i23);
                        eVar6.setVerticalBiasPercent(f3);
                    }
                    if (i21 == i12 - 1) {
                        eVar6.connect(eVar6.f20088L, this.f20172g, this.f20176k);
                    }
                    if (eVar5 != null) {
                        int i24 = hVar.f20197Q0;
                        d dVar4 = eVar5.f20088L;
                        dVar3.connect(dVar4, i24);
                        if (i21 == i15) {
                            dVar3.setGoneMargin(this.f20174i);
                        }
                        dVar4.connect(dVar3, 0);
                        if (i21 == i16 + 1) {
                            dVar4.setGoneMargin(this.f20176k);
                        }
                    }
                    if (eVar6 != eVar4) {
                        d dVar5 = eVar6.f20087K;
                        d dVar6 = eVar6.f20085I;
                        if (z6) {
                            int i25 = hVar.f20198R0;
                            if (i25 == 0) {
                                dVar5.connect(dVar2, 0);
                            } else if (i25 == 1) {
                                dVar6.connect(dVar, 0);
                            } else if (i25 == 2) {
                                dVar6.connect(dVar, 0);
                                dVar5.connect(dVar2, 0);
                            }
                        } else {
                            int i26 = hVar.f20198R0;
                            if (i26 == 0) {
                                dVar6.connect(dVar, 0);
                            } else if (i26 == 1) {
                                dVar5.connect(dVar2, 0);
                            } else if (i26 == 2) {
                                if (z10) {
                                    dVar6.connect(this.f20169d, this.f20173h);
                                    dVar5.connect(this.f20171f, this.f20175j);
                                } else {
                                    dVar6.connect(dVar, 0);
                                    dVar5.connect(dVar2, 0);
                                }
                            }
                        }
                    }
                }
                i21++;
                eVar5 = eVar6;
            }
            return;
        }
        e eVar7 = this.f20167b;
        eVar7.setVerticalChainStyle(hVar.f20185E0);
        int i27 = this.f20174i;
        if (i2 > 0) {
            i27 += hVar.f20197Q0;
        }
        d dVar7 = this.f20170e;
        d dVar8 = eVar7.f20086J;
        dVar8.connect(dVar7, i27);
        d dVar9 = eVar7.f20088L;
        if (z7) {
            dVar9.connect(this.f20172g, this.f20176k);
        }
        if (i2 > 0) {
            this.f20170e.f20071d.f20088L.connect(dVar8, 0);
        }
        if (hVar.f20199S0 == 3 && !eVar7.hasBaseline()) {
            for (int i28 = 0; i28 < i12; i28++) {
                int i29 = z6 ? (i12 - 1) - i28 : i28;
                int i30 = this.f20179n;
                i9 = 1;
                if (i30 + i29 >= hVar.f20208b1) {
                    break;
                }
                eVar = hVar.f20207a1[i30 + i29];
                if (eVar.hasBaseline()) {
                    break;
                }
            }
        }
        i9 = 1;
        eVar = eVar7;
        int i31 = 0;
        e eVar8 = null;
        while (i31 < i12) {
            int i32 = z6 ? (i12 - 1) - i31 : i31;
            int i33 = this.f20179n;
            if (i33 + i32 >= hVar.f20208b1) {
                return;
            }
            e eVar9 = hVar.f20207a1[i33 + i32];
            if (eVar9 == null) {
                z8 = z9;
            } else {
                d dVar10 = eVar9.f20085I;
                if (i31 == 0) {
                    z8 = z9;
                    eVar9.connect(dVar10, this.f20169d, this.f20173h);
                } else {
                    z8 = z9;
                }
                if (i32 == 0) {
                    int i34 = hVar.f20184D0;
                    float f7 = z6 ? 1.0f - hVar.f20190J0 : hVar.f20190J0;
                    if (this.f20179n == 0) {
                        int i35 = hVar.f20186F0;
                        i10 = i34;
                        if (i35 != -1) {
                            f7 = z6 ? 1.0f - hVar.f20192L0 : hVar.f20192L0;
                            i11 = i35;
                            eVar9.setHorizontalChainStyle(i11);
                            eVar9.setHorizontalBiasPercent(f7);
                        }
                    } else {
                        i10 = i34;
                    }
                    if (!z7 || (i11 = hVar.f20188H0) == -1) {
                        i11 = i10;
                    } else {
                        f7 = z6 ? 1.0f - hVar.f20194N0 : hVar.f20194N0;
                    }
                    eVar9.setHorizontalChainStyle(i11);
                    eVar9.setHorizontalBiasPercent(f7);
                }
                if (i31 == i12 - 1) {
                    eVar9.connect(eVar9.f20087K, this.f20171f, this.f20175j);
                }
                if (eVar8 != null) {
                    int i36 = hVar.f20196P0;
                    d dVar11 = eVar8.f20087K;
                    dVar10.connect(dVar11, i36);
                    if (i31 == i15) {
                        dVar10.setGoneMargin(this.f20173h);
                    }
                    dVar11.connect(dVar10, 0);
                    if (i31 == i16 + 1) {
                        dVar11.setGoneMargin(this.f20175j);
                    }
                }
                if (eVar9 != eVar7) {
                    if (hVar.f20199S0 == 3 && eVar.hasBaseline() && eVar9 != eVar && eVar9.hasBaseline()) {
                        eVar9.f20089M.connect(eVar.f20089M, 0);
                    } else {
                        int i37 = hVar.f20199S0;
                        d dVar12 = eVar9.f20086J;
                        if (i37 != 0) {
                            d dVar13 = eVar9.f20088L;
                            if (i37 == i9) {
                                dVar13.connect(dVar9, 0);
                            } else if (z8) {
                                dVar12.connect(this.f20170e, this.f20174i);
                                dVar13.connect(this.f20172g, this.f20176k);
                            } else {
                                dVar12.connect(dVar8, 0);
                                dVar13.connect(dVar9, 0);
                            }
                        } else {
                            dVar12.connect(dVar8, 0);
                        }
                    }
                }
                eVar8 = eVar9;
            }
            i31++;
            z9 = z8;
            i9 = 1;
        }
    }

    public int getHeight() {
        return this.f20166a == 1 ? this.f20178m - this.f20183r.f20197Q0 : this.f20178m;
    }

    public int getWidth() {
        return this.f20166a == 0 ? this.f20177l - this.f20183r.f20196P0 : this.f20177l;
    }

    public void measureMatchConstraints(int i2) {
        h hVar;
        int i7 = this.f20181p;
        if (i7 == 0) {
            return;
        }
        int i8 = this.f20180o;
        int i9 = i2 / i7;
        int i10 = 0;
        while (true) {
            hVar = this.f20183r;
            if (i10 >= i8) {
                break;
            }
            int i11 = this.f20179n;
            if (i11 + i10 >= hVar.f20208b1) {
                break;
            }
            e eVar = hVar.f20207a1[i11 + i10];
            int i12 = this.f20166a;
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.f5239b;
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.f5241f;
            if (i12 == 0) {
                if (eVar != null && eVar.getHorizontalDimensionBehaviour() == constraintWidget$DimensionBehaviour2 && eVar.f20136r == 0) {
                    this.f20183r.measure(eVar, constraintWidget$DimensionBehaviour, i9, eVar.getVerticalDimensionBehaviour(), eVar.getHeight());
                }
            } else if (eVar != null && eVar.getVerticalDimensionBehaviour() == constraintWidget$DimensionBehaviour2 && eVar.f20137s == 0) {
                int i13 = i9;
                this.f20183r.measure(eVar, eVar.getHorizontalDimensionBehaviour(), eVar.getWidth(), constraintWidget$DimensionBehaviour, i13);
                i9 = i13;
            }
            i10++;
        }
        this.f20177l = 0;
        this.f20178m = 0;
        this.f20167b = null;
        this.f20168c = 0;
        int i14 = this.f20180o;
        for (int i15 = 0; i15 < i14; i15++) {
            int i16 = this.f20179n + i15;
            if (i16 >= hVar.f20208b1) {
                return;
            }
            e eVar2 = hVar.f20207a1[i16];
            if (this.f20166a == 0) {
                int width = eVar2.getWidth();
                int i17 = hVar.f20196P0;
                if (eVar2.getVisibility() == 8) {
                    i17 = 0;
                }
                this.f20177l = width + i17 + this.f20177l;
                int g7 = hVar.g(eVar2, this.f20182q);
                if (this.f20167b == null || this.f20168c < g7) {
                    this.f20167b = eVar2;
                    this.f20168c = g7;
                    this.f20178m = g7;
                }
            } else {
                int h7 = hVar.h(eVar2, this.f20182q);
                int g8 = hVar.g(eVar2, this.f20182q);
                int i18 = hVar.f20197Q0;
                if (eVar2.getVisibility() == 8) {
                    i18 = 0;
                }
                this.f20178m = g8 + i18 + this.f20178m;
                if (this.f20167b == null || this.f20168c < h7) {
                    this.f20167b = eVar2;
                    this.f20168c = h7;
                    this.f20177l = h7;
                }
            }
        }
    }

    public void setStartIndex(int i2) {
        this.f20179n = i2;
    }

    public void setup(int i2, d dVar, d dVar2, d dVar3, d dVar4, int i7, int i8, int i9, int i10, int i11) {
        this.f20166a = i2;
        this.f20169d = dVar;
        this.f20170e = dVar2;
        this.f20171f = dVar3;
        this.f20172g = dVar4;
        this.f20173h = i7;
        this.f20174i = i8;
        this.f20175j = i9;
        this.f20176k = i10;
        this.f20182q = i11;
    }
}
