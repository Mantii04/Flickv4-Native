package u;

import androidx.constraintlayout.core.widgets.ConstraintAnchor$Type;
import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import androidx.media3.common.util.Log;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import org.apache.commons.lang3.StringUtils;
import r.C1531d;
import r.C1533f;
import t.C1644a;

/* loaded from: classes.dex */
public class e {

    /* renamed from: A, reason: collision with root package name */
    public int f20077A;

    /* renamed from: B, reason: collision with root package name */
    public float f20078B;

    /* renamed from: C, reason: collision with root package name */
    public final int[] f20079C;

    /* renamed from: D, reason: collision with root package name */
    public float f20080D;

    /* renamed from: E, reason: collision with root package name */
    public boolean f20081E;

    /* renamed from: F, reason: collision with root package name */
    public boolean f20082F;

    /* renamed from: G, reason: collision with root package name */
    public int f20083G;

    /* renamed from: H, reason: collision with root package name */
    public int f20084H;

    /* renamed from: I, reason: collision with root package name */
    public final d f20085I;

    /* renamed from: J, reason: collision with root package name */
    public final d f20086J;

    /* renamed from: K, reason: collision with root package name */
    public final d f20087K;

    /* renamed from: L, reason: collision with root package name */
    public final d f20088L;

    /* renamed from: M, reason: collision with root package name */
    public final d f20089M;

    /* renamed from: N, reason: collision with root package name */
    public final d f20090N;

    /* renamed from: O, reason: collision with root package name */
    public final d f20091O;

    /* renamed from: P, reason: collision with root package name */
    public final d f20092P;

    /* renamed from: Q, reason: collision with root package name */
    public final d[] f20093Q;

    /* renamed from: R, reason: collision with root package name */
    public final ArrayList f20094R;

    /* renamed from: S, reason: collision with root package name */
    public final boolean[] f20095S;

    /* renamed from: T, reason: collision with root package name */
    public final ConstraintWidget$DimensionBehaviour[] f20096T;

    /* renamed from: U, reason: collision with root package name */
    public e f20097U;

    /* renamed from: V, reason: collision with root package name */
    public int f20098V;

    /* renamed from: W, reason: collision with root package name */
    public int f20099W;

    /* renamed from: X, reason: collision with root package name */
    public float f20100X;

    /* renamed from: Y, reason: collision with root package name */
    public int f20101Y;

    /* renamed from: Z, reason: collision with root package name */
    public int f20102Z;

    /* renamed from: a0, reason: collision with root package name */
    public int f20104a0;

    /* renamed from: b, reason: collision with root package name */
    public v.e f20105b;

    /* renamed from: b0, reason: collision with root package name */
    public int f20106b0;

    /* renamed from: c, reason: collision with root package name */
    public v.e f20107c;

    /* renamed from: c0, reason: collision with root package name */
    public int f20108c0;

    /* renamed from: d0, reason: collision with root package name */
    public int f20110d0;

    /* renamed from: e0, reason: collision with root package name */
    public float f20112e0;

    /* renamed from: f0, reason: collision with root package name */
    public float f20114f0;

    /* renamed from: g0, reason: collision with root package name */
    public Object f20116g0;

    /* renamed from: h0, reason: collision with root package name */
    public int f20118h0;

    /* renamed from: i0, reason: collision with root package name */
    public String f20120i0;

    /* renamed from: j, reason: collision with root package name */
    public String f20121j;

    /* renamed from: j0, reason: collision with root package name */
    public int f20122j0;

    /* renamed from: k, reason: collision with root package name */
    public boolean f20123k;

    /* renamed from: k0, reason: collision with root package name */
    public int f20124k0;

    /* renamed from: l, reason: collision with root package name */
    public boolean f20125l;

    /* renamed from: l0, reason: collision with root package name */
    public final float[] f20126l0;

    /* renamed from: m, reason: collision with root package name */
    public boolean f20127m;

    /* renamed from: m0, reason: collision with root package name */
    public final e[] f20128m0;

    /* renamed from: n, reason: collision with root package name */
    public boolean f20129n;

    /* renamed from: n0, reason: collision with root package name */
    public final e[] f20130n0;

    /* renamed from: o, reason: collision with root package name */
    public int f20131o;

    /* renamed from: o0, reason: collision with root package name */
    public int f20132o0;

    /* renamed from: p, reason: collision with root package name */
    public int f20133p;

    /* renamed from: p0, reason: collision with root package name */
    public int f20134p0;

    /* renamed from: q, reason: collision with root package name */
    public int f20135q;

    /* renamed from: r, reason: collision with root package name */
    public int f20136r;

    /* renamed from: s, reason: collision with root package name */
    public int f20137s;

    /* renamed from: t, reason: collision with root package name */
    public final int[] f20138t;

    /* renamed from: u, reason: collision with root package name */
    public int f20139u;

    /* renamed from: v, reason: collision with root package name */
    public int f20140v;

    /* renamed from: w, reason: collision with root package name */
    public float f20141w;

    /* renamed from: x, reason: collision with root package name */
    public int f20142x;

    /* renamed from: y, reason: collision with root package name */
    public int f20143y;

    /* renamed from: z, reason: collision with root package name */
    public float f20144z;

    /* renamed from: a, reason: collision with root package name */
    public boolean f20103a = false;

    /* renamed from: d, reason: collision with root package name */
    public androidx.constraintlayout.core.widgets.analyzer.d f20109d = null;

    /* renamed from: e, reason: collision with root package name */
    public androidx.constraintlayout.core.widgets.analyzer.e f20111e = null;

    /* renamed from: f, reason: collision with root package name */
    public final boolean[] f20113f = {true, true};

    /* renamed from: g, reason: collision with root package name */
    public boolean f20115g = true;

    /* renamed from: h, reason: collision with root package name */
    public int f20117h = -1;

    /* renamed from: i, reason: collision with root package name */
    public int f20119i = -1;

    public e() {
        new C1644a(this);
        this.f20123k = false;
        this.f20125l = false;
        this.f20127m = false;
        this.f20129n = false;
        this.f20131o = -1;
        this.f20133p = -1;
        this.f20135q = 0;
        this.f20136r = 0;
        this.f20137s = 0;
        this.f20138t = new int[2];
        this.f20139u = 0;
        this.f20140v = 0;
        this.f20141w = 1.0f;
        this.f20142x = 0;
        this.f20143y = 0;
        this.f20144z = 1.0f;
        this.f20077A = -1;
        this.f20078B = 1.0f;
        this.f20079C = new int[]{Log.LOG_LEVEL_OFF, Log.LOG_LEVEL_OFF};
        this.f20080D = 0.0f;
        this.f20081E = false;
        this.f20082F = false;
        this.f20083G = 0;
        this.f20084H = 0;
        d dVar = new d(this, ConstraintAnchor$Type.f5230b);
        this.f20085I = dVar;
        d dVar2 = new d(this, ConstraintAnchor$Type.f5231e);
        this.f20086J = dVar2;
        d dVar3 = new d(this, ConstraintAnchor$Type.f5232f);
        this.f20087K = dVar3;
        d dVar4 = new d(this, ConstraintAnchor$Type.f5233j);
        this.f20088L = dVar4;
        d dVar5 = new d(this, ConstraintAnchor$Type.f5234m);
        this.f20089M = dVar5;
        d dVar6 = new d(this, ConstraintAnchor$Type.f5236p);
        this.f20090N = dVar6;
        d dVar7 = new d(this, ConstraintAnchor$Type.f5237q);
        this.f20091O = dVar7;
        d dVar8 = new d(this, ConstraintAnchor$Type.f5235n);
        this.f20092P = dVar8;
        this.f20093Q = new d[]{dVar, dVar3, dVar2, dVar4, dVar5, dVar8};
        ArrayList arrayList = new ArrayList();
        this.f20094R = arrayList;
        this.f20095S = new boolean[2];
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.f5239b;
        this.f20096T = new ConstraintWidget$DimensionBehaviour[]{constraintWidget$DimensionBehaviour, constraintWidget$DimensionBehaviour};
        this.f20097U = null;
        this.f20098V = 0;
        this.f20099W = 0;
        this.f20100X = 0.0f;
        this.f20101Y = -1;
        this.f20102Z = 0;
        this.f20104a0 = 0;
        this.f20106b0 = 0;
        this.f20112e0 = 0.5f;
        this.f20114f0 = 0.5f;
        this.f20118h0 = 0;
        this.f20120i0 = null;
        this.f20122j0 = 0;
        this.f20124k0 = 0;
        this.f20126l0 = new float[]{-1.0f, -1.0f};
        this.f20128m0 = new e[]{null, null};
        this.f20130n0 = new e[]{null, null};
        this.f20132o0 = -1;
        this.f20134p0 = -1;
        arrayList.add(dVar);
        arrayList.add(dVar2);
        arrayList.add(dVar3);
        arrayList.add(dVar4);
        arrayList.add(dVar6);
        arrayList.add(dVar7);
        arrayList.add(dVar8);
        arrayList.add(dVar5);
    }

    public static void b(StringBuilder sb, String str, int i2, int i7, int i8, int i9, int i10, float f3) {
        sb.append(str);
        sb.append(" :  {\n");
        e(i2, 0, "      size", sb);
        e(i7, 0, "      min", sb);
        e(i8, Log.LOG_LEVEL_OFF, "      max", sb);
        e(i9, 0, "      matchMin", sb);
        e(i10, 0, "      matchDef", sb);
        f(sb, "      matchPercent", f3, 1.0f);
        sb.append("    },\n");
    }

    public static void c(StringBuilder sb, String str, d dVar) {
        if (dVar.f20073f == null) {
            return;
        }
        sb.append("    ");
        sb.append(str);
        sb.append(" : [ '");
        sb.append(dVar.f20073f);
        sb.append("'");
        if (dVar.f20075h != Integer.MIN_VALUE || dVar.f20074g != 0) {
            sb.append(",");
            sb.append(dVar.f20074g);
            if (dVar.f20075h != Integer.MIN_VALUE) {
                sb.append(",");
                sb.append(dVar.f20075h);
                sb.append(",");
            }
        }
        sb.append(" ] ,\n");
    }

    public static void e(int i2, int i7, String str, StringBuilder sb) {
        if (i2 == i7) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(i2);
        sb.append(",\n");
    }

    public static void f(StringBuilder sb, String str, float f3, float f7) {
        if (f3 == f7) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(f3);
        sb.append(",\n");
    }

    /* JADX WARN: Code restructure failed: missing block: B:154:0x0477, code lost:
    
        if ((r7 instanceof u.C1658a) != false) goto L255;
     */
    /* JADX WARN: Removed duplicated region for block: B:167:0x04b9  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0505  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0534 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:93:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(r.C1533f r36, boolean r37, boolean r38, boolean r39, boolean r40, r.m r41, r.m r42, androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour r43, boolean r44, u.d r45, u.d r46, int r47, int r48, int r49, int r50, float r51, boolean r52, boolean r53, boolean r54, boolean r55, boolean r56, int r57, int r58, int r59, int r60, float r61, boolean r62) {
        /*
            Method dump skipped, instructions count: 1424
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: u.e.a(r.f, boolean, boolean, boolean, boolean, r.m, r.m, androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour, boolean, u.d, u.d, int, int, int, int, float, boolean, boolean, boolean, boolean, boolean, int, int, int, int, float, boolean):void");
    }

    public void addChildrenToSolverByDependency(f fVar, C1533f c1533f, HashSet<e> hashSet, int i2, boolean z6) {
        if (z6) {
            if (!hashSet.contains(this)) {
                return;
            }
            l.a(fVar, c1533f, this);
            hashSet.remove(this);
            addToSolver(c1533f, fVar.optimizeFor(64));
        }
        if (i2 == 0) {
            HashSet<d> dependents = this.f20085I.getDependents();
            if (dependents != null) {
                Iterator<d> it = dependents.iterator();
                while (it.hasNext()) {
                    it.next().f20071d.addChildrenToSolverByDependency(fVar, c1533f, hashSet, i2, true);
                }
            }
            HashSet<d> dependents2 = this.f20087K.getDependents();
            if (dependents2 != null) {
                Iterator<d> it2 = dependents2.iterator();
                while (it2.hasNext()) {
                    it2.next().f20071d.addChildrenToSolverByDependency(fVar, c1533f, hashSet, i2, true);
                }
                return;
            }
            return;
        }
        HashSet<d> dependents3 = this.f20086J.getDependents();
        if (dependents3 != null) {
            Iterator<d> it3 = dependents3.iterator();
            while (it3.hasNext()) {
                it3.next().f20071d.addChildrenToSolverByDependency(fVar, c1533f, hashSet, i2, true);
            }
        }
        HashSet<d> dependents4 = this.f20088L.getDependents();
        if (dependents4 != null) {
            Iterator<d> it4 = dependents4.iterator();
            while (it4.hasNext()) {
                it4.next().f20071d.addChildrenToSolverByDependency(fVar, c1533f, hashSet, i2, true);
            }
        }
        HashSet<d> dependents5 = this.f20089M.getDependents();
        if (dependents5 != null) {
            Iterator<d> it5 = dependents5.iterator();
            while (it5.hasNext()) {
                it5.next().f20071d.addChildrenToSolverByDependency(fVar, c1533f, hashSet, i2, true);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x004a, code lost:
    
        if (r10 != 3) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x04fa, code lost:
    
        if (r56.f20118h0 == r15) goto L304;
     */
    /* JADX WARN: Code restructure failed: missing block: B:303:0x00e6, code lost:
    
        if (r6.getFinalValue() > ((u.d) r10.f20151G0.get()).getFinalValue()) goto L61;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0312  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x032e  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x034f  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x045b  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x04c0  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x04c5  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x058c  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x05bb  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x04c2  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x030e  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x024f  */
    /* JADX WARN: Type inference failed for: r12v20 */
    /* JADX WARN: Type inference failed for: r12v21, types: [int] */
    /* JADX WARN: Type inference failed for: r12v27 */
    /* JADX WARN: Type inference failed for: r13v28, types: [u.f] */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v13 */
    /* JADX WARN: Type inference failed for: r18v14 */
    /* JADX WARN: Type inference failed for: r18v16 */
    /* JADX WARN: Type inference failed for: r18v19 */
    /* JADX WARN: Type inference failed for: r18v20 */
    /* JADX WARN: Type inference failed for: r18v7, types: [boolean] */
    /* JADX WARN: Type inference failed for: r18v8 */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v14 */
    /* JADX WARN: Type inference failed for: r20v17 */
    /* JADX WARN: Type inference failed for: r20v18 */
    /* JADX WARN: Type inference failed for: r20v19 */
    /* JADX WARN: Type inference failed for: r27v10 */
    /* JADX WARN: Type inference failed for: r27v3 */
    /* JADX WARN: Type inference failed for: r27v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r27v8 */
    /* JADX WARN: Type inference failed for: r27v9 */
    /* JADX WARN: Type inference failed for: r56v0, types: [u.e] */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addToSolver(r.C1533f r57, boolean r58) {
        /*
            Method dump skipped, instructions count: 1499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: u.e.addToSolver(r.f, boolean):void");
    }

    public boolean allowedInBarrier() {
        return this.f20118h0 != 8;
    }

    public void connect(d dVar, d dVar2, int i2) {
        if (dVar.getOwner() == this) {
            connect(dVar.getType(), dVar2.getOwner(), dVar2.getType(), i2);
        }
    }

    public void connectCircularConstraint(e eVar, float f3, int i2) {
        ConstraintAnchor$Type constraintAnchor$Type = ConstraintAnchor$Type.f5235n;
        immediateConnect(constraintAnchor$Type, eVar, constraintAnchor$Type, i2, 0);
        this.f20080D = f3;
    }

    public void createObjectVariables(C1533f c1533f) {
        c1533f.createObjectVariable(this.f20085I);
        c1533f.createObjectVariable(this.f20086J);
        c1533f.createObjectVariable(this.f20087K);
        c1533f.createObjectVariable(this.f20088L);
        if (this.f20106b0 > 0) {
            c1533f.createObjectVariable(this.f20089M);
        }
    }

    public final boolean d(int i2) {
        d dVar;
        d dVar2;
        int i7 = i2 * 2;
        d[] dVarArr = this.f20093Q;
        d dVar3 = dVarArr[i7];
        d dVar4 = dVar3.f20073f;
        return (dVar4 == null || dVar4.f20073f == dVar3 || (dVar2 = (dVar = dVarArr[i7 + 1]).f20073f) == null || dVar2.f20073f != dVar) ? false : true;
    }

    public void ensureWidgetRuns() {
        if (this.f20109d == null) {
            this.f20109d = new androidx.constraintlayout.core.widgets.analyzer.d(this);
        }
        if (this.f20111e == null) {
            this.f20111e = new androidx.constraintlayout.core.widgets.analyzer.e(this);
        }
    }

    public d getAnchor(ConstraintAnchor$Type constraintAnchor$Type) {
        switch (constraintAnchor$Type.ordinal()) {
            case 0:
                return null;
            case 1:
                return this.f20085I;
            case 2:
                return this.f20086J;
            case 3:
                return this.f20087K;
            case 4:
                return this.f20088L;
            case 5:
                return this.f20089M;
            case 6:
                return this.f20092P;
            case 7:
                return this.f20090N;
            case 8:
                return this.f20091O;
            default:
                throw new AssertionError(constraintAnchor$Type.name());
        }
    }

    public int getBaselineDistance() {
        return this.f20106b0;
    }

    public float getBiasPercent(int i2) {
        if (i2 == 0) {
            return this.f20112e0;
        }
        if (i2 == 1) {
            return this.f20114f0;
        }
        return -1.0f;
    }

    public int getBottom() {
        return getY() + this.f20099W;
    }

    public Object getCompanionWidget() {
        return this.f20116g0;
    }

    public String getDebugName() {
        return this.f20120i0;
    }

    public ConstraintWidget$DimensionBehaviour getDimensionBehaviour(int i2) {
        if (i2 == 0) {
            return getHorizontalDimensionBehaviour();
        }
        if (i2 == 1) {
            return getVerticalDimensionBehaviour();
        }
        return null;
    }

    public float getDimensionRatio() {
        return this.f20100X;
    }

    public int getDimensionRatioSide() {
        return this.f20101Y;
    }

    public int getHeight() {
        if (this.f20118h0 == 8) {
            return 0;
        }
        return this.f20099W;
    }

    public float getHorizontalBiasPercent() {
        return this.f20112e0;
    }

    public int getHorizontalChainStyle() {
        return this.f20122j0;
    }

    public ConstraintWidget$DimensionBehaviour getHorizontalDimensionBehaviour() {
        return this.f20096T[0];
    }

    public int getHorizontalMargin() {
        d dVar = this.f20085I;
        int i2 = dVar != null ? dVar.f20074g : 0;
        d dVar2 = this.f20087K;
        return dVar2 != null ? i2 + dVar2.f20074g : i2;
    }

    public int getLastHorizontalMeasureSpec() {
        return this.f20083G;
    }

    public int getLastVerticalMeasureSpec() {
        return this.f20084H;
    }

    public int getLength(int i2) {
        if (i2 == 0) {
            return getWidth();
        }
        if (i2 == 1) {
            return getHeight();
        }
        return 0;
    }

    public int getMaxHeight() {
        return this.f20079C[1];
    }

    public int getMaxWidth() {
        return this.f20079C[0];
    }

    public int getMinHeight() {
        return this.f20110d0;
    }

    public int getMinWidth() {
        return this.f20108c0;
    }

    public e getNextChainMember(int i2) {
        d dVar;
        d dVar2;
        if (i2 != 0) {
            if (i2 == 1 && (dVar2 = (dVar = this.f20088L).f20073f) != null && dVar2.f20073f == dVar) {
                return dVar2.f20071d;
            }
            return null;
        }
        d dVar3 = this.f20087K;
        d dVar4 = dVar3.f20073f;
        if (dVar4 == null || dVar4.f20073f != dVar3) {
            return null;
        }
        return dVar4.f20071d;
    }

    public e getParent() {
        return this.f20097U;
    }

    public e getPreviousChainMember(int i2) {
        d dVar;
        d dVar2;
        if (i2 != 0) {
            if (i2 == 1 && (dVar2 = (dVar = this.f20086J).f20073f) != null && dVar2.f20073f == dVar) {
                return dVar2.f20071d;
            }
            return null;
        }
        d dVar3 = this.f20085I;
        d dVar4 = dVar3.f20073f;
        if (dVar4 == null || dVar4.f20073f != dVar3) {
            return null;
        }
        return dVar4.f20071d;
    }

    public int getRight() {
        return getX() + this.f20098V;
    }

    public androidx.constraintlayout.core.widgets.analyzer.f getRun(int i2) {
        if (i2 == 0) {
            return this.f20109d;
        }
        if (i2 == 1) {
            return this.f20111e;
        }
        return null;
    }

    public void getSceneString(StringBuilder sb) {
        sb.append("  " + this.f20121j + ":{\n");
        StringBuilder sb2 = new StringBuilder("    actualWidth:");
        sb2.append(this.f20098V);
        sb.append(sb2.toString());
        sb.append(StringUtils.LF);
        sb.append("    actualHeight:" + this.f20099W);
        sb.append(StringUtils.LF);
        sb.append("    actualLeft:" + this.f20102Z);
        sb.append(StringUtils.LF);
        sb.append("    actualTop:" + this.f20104a0);
        sb.append(StringUtils.LF);
        c(sb, "left", this.f20085I);
        c(sb, "top", this.f20086J);
        c(sb, "right", this.f20087K);
        c(sb, "bottom", this.f20088L);
        c(sb, "baseline", this.f20089M);
        c(sb, "centerX", this.f20090N);
        c(sb, "centerY", this.f20091O);
        int i2 = this.f20098V;
        int i7 = this.f20108c0;
        int[] iArr = this.f20079C;
        int i8 = iArr[0];
        int i9 = this.f20139u;
        int i10 = this.f20136r;
        float f3 = this.f20141w;
        float[] fArr = this.f20126l0;
        float f7 = fArr[0];
        b(sb, "    width", i2, i7, i8, i9, i10, f3);
        int i11 = this.f20099W;
        int i12 = this.f20110d0;
        int i13 = iArr[1];
        int i14 = this.f20142x;
        int i15 = this.f20137s;
        float f8 = this.f20144z;
        float f9 = fArr[1];
        b(sb, "    height", i11, i12, i13, i14, i15, f8);
        float f10 = this.f20100X;
        int i16 = this.f20101Y;
        if (f10 != 0.0f) {
            sb.append("    dimensionRatio");
            sb.append(" :  [");
            sb.append(f10);
            sb.append(",");
            sb.append(i16);
            sb.append("");
            sb.append("],\n");
        }
        f(sb, "    horizontalBias", this.f20112e0, 0.5f);
        f(sb, "    verticalBias", this.f20114f0, 0.5f);
        e(this.f20122j0, 0, "    horizontalChainStyle", sb);
        e(this.f20124k0, 0, "    verticalChainStyle", sb);
        sb.append("  }");
    }

    public float getVerticalBiasPercent() {
        return this.f20114f0;
    }

    public int getVerticalChainStyle() {
        return this.f20124k0;
    }

    public ConstraintWidget$DimensionBehaviour getVerticalDimensionBehaviour() {
        return this.f20096T[1];
    }

    public int getVerticalMargin() {
        int i2 = this.f20085I != null ? this.f20086J.f20074g : 0;
        return this.f20087K != null ? i2 + this.f20088L.f20074g : i2;
    }

    public int getVisibility() {
        return this.f20118h0;
    }

    public int getWidth() {
        if (this.f20118h0 == 8) {
            return 0;
        }
        return this.f20098V;
    }

    public int getX() {
        e eVar = this.f20097U;
        return (eVar == null || !(eVar instanceof f)) ? this.f20102Z : ((f) eVar).f20163x0 + this.f20102Z;
    }

    public int getY() {
        e eVar = this.f20097U;
        return (eVar == null || !(eVar instanceof f)) ? this.f20104a0 : ((f) eVar).f20164y0 + this.f20104a0;
    }

    public boolean hasBaseline() {
        return this.f20081E;
    }

    public boolean hasDanglingDimension(int i2) {
        if (i2 == 0) {
            return (this.f20085I.f20073f != null ? 1 : 0) + (this.f20087K.f20073f != null ? 1 : 0) < 2;
        }
        return ((this.f20086J.f20073f != null ? 1 : 0) + (this.f20088L.f20073f != null ? 1 : 0)) + (this.f20089M.f20073f != null ? 1 : 0) < 2;
    }

    public boolean hasDependencies() {
        ArrayList arrayList = this.f20094R;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (((d) arrayList.get(i2)).hasDependents()) {
                return true;
            }
        }
        return false;
    }

    public boolean hasDimensionOverride() {
        return (this.f20117h == -1 && this.f20119i == -1) ? false : true;
    }

    public boolean hasResolvedTargets(int i2, int i7) {
        d dVar;
        d dVar2;
        d dVar3;
        d dVar4;
        if (i2 == 0) {
            d dVar5 = this.f20085I;
            d dVar6 = dVar5.f20073f;
            if (dVar6 != null && dVar6.hasFinalValue() && (dVar4 = (dVar3 = this.f20087K).f20073f) != null && dVar4.hasFinalValue()) {
                return (dVar3.f20073f.getFinalValue() - dVar3.getMargin()) - (dVar5.getMargin() + dVar5.f20073f.getFinalValue()) >= i7;
            }
        } else {
            d dVar7 = this.f20086J;
            d dVar8 = dVar7.f20073f;
            if (dVar8 != null && dVar8.hasFinalValue() && (dVar2 = (dVar = this.f20088L).f20073f) != null && dVar2.hasFinalValue()) {
                if ((dVar.f20073f.getFinalValue() - dVar.getMargin()) - (dVar7.getMargin() + dVar7.f20073f.getFinalValue()) >= i7) {
                    return true;
                }
            }
        }
        return false;
    }

    public void immediateConnect(ConstraintAnchor$Type constraintAnchor$Type, e eVar, ConstraintAnchor$Type constraintAnchor$Type2, int i2, int i7) {
        getAnchor(constraintAnchor$Type).connect(eVar.getAnchor(constraintAnchor$Type2), i2, i7, true);
    }

    public boolean isHorizontalSolvingPassDone() {
        return this.f20127m;
    }

    public boolean isInBarrier(int i2) {
        return this.f20095S[i2];
    }

    public boolean isInHorizontalChain() {
        d dVar = this.f20085I;
        d dVar2 = dVar.f20073f;
        if (dVar2 != null && dVar2.f20073f == dVar) {
            return true;
        }
        d dVar3 = this.f20087K;
        d dVar4 = dVar3.f20073f;
        return dVar4 != null && dVar4.f20073f == dVar3;
    }

    public boolean isInPlaceholder() {
        return false;
    }

    public boolean isInVerticalChain() {
        d dVar = this.f20086J;
        d dVar2 = dVar.f20073f;
        if (dVar2 != null && dVar2.f20073f == dVar) {
            return true;
        }
        d dVar3 = this.f20088L;
        d dVar4 = dVar3.f20073f;
        return dVar4 != null && dVar4.f20073f == dVar3;
    }

    public boolean isInVirtualLayout() {
        return this.f20082F;
    }

    public boolean isMeasureRequested() {
        return this.f20115g && this.f20118h0 != 8;
    }

    public boolean isResolvedHorizontally() {
        if (this.f20123k) {
            return true;
        }
        return this.f20085I.hasFinalValue() && this.f20087K.hasFinalValue();
    }

    public boolean isResolvedVertically() {
        if (this.f20125l) {
            return true;
        }
        return this.f20086J.hasFinalValue() && this.f20088L.hasFinalValue();
    }

    public boolean isVerticalSolvingPassDone() {
        return this.f20129n;
    }

    public void markHorizontalSolvingPassDone() {
        this.f20127m = true;
    }

    public void markVerticalSolvingPassDone() {
        this.f20129n = true;
    }

    public boolean oppositeDimensionsTied() {
        ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = this.f20096T;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = constraintWidget$DimensionBehaviourArr[0];
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.f5241f;
        return constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour2 && constraintWidget$DimensionBehaviourArr[1] == constraintWidget$DimensionBehaviour2;
    }

    public void reset() {
        this.f20085I.reset();
        this.f20086J.reset();
        this.f20087K.reset();
        this.f20088L.reset();
        this.f20089M.reset();
        this.f20090N.reset();
        this.f20091O.reset();
        this.f20092P.reset();
        this.f20097U = null;
        this.f20080D = 0.0f;
        this.f20098V = 0;
        this.f20099W = 0;
        this.f20100X = 0.0f;
        this.f20101Y = -1;
        this.f20102Z = 0;
        this.f20104a0 = 0;
        this.f20106b0 = 0;
        this.f20108c0 = 0;
        this.f20110d0 = 0;
        this.f20112e0 = 0.5f;
        this.f20114f0 = 0.5f;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.f5239b;
        ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = this.f20096T;
        constraintWidget$DimensionBehaviourArr[0] = constraintWidget$DimensionBehaviour;
        constraintWidget$DimensionBehaviourArr[1] = constraintWidget$DimensionBehaviour;
        this.f20116g0 = null;
        this.f20118h0 = 0;
        this.f20122j0 = 0;
        this.f20124k0 = 0;
        float[] fArr = this.f20126l0;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.f20131o = -1;
        this.f20133p = -1;
        int[] iArr = this.f20079C;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.f20136r = 0;
        this.f20137s = 0;
        this.f20141w = 1.0f;
        this.f20144z = 1.0f;
        this.f20140v = Log.LOG_LEVEL_OFF;
        this.f20143y = Log.LOG_LEVEL_OFF;
        this.f20139u = 0;
        this.f20142x = 0;
        this.f20077A = -1;
        this.f20078B = 1.0f;
        boolean[] zArr = this.f20113f;
        zArr[0] = true;
        zArr[1] = true;
        this.f20082F = false;
        boolean[] zArr2 = this.f20095S;
        zArr2[0] = false;
        zArr2[1] = false;
        this.f20115g = true;
        int[] iArr2 = this.f20138t;
        iArr2[0] = 0;
        iArr2[1] = 0;
        this.f20117h = -1;
        this.f20119i = -1;
    }

    public void resetAnchors() {
        e parent = getParent();
        if (parent != null && (parent instanceof f) && ((f) getParent()).handlesInternalConstraints()) {
            return;
        }
        ArrayList arrayList = this.f20094R;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((d) arrayList.get(i2)).reset();
        }
    }

    public void resetFinalResolution() {
        this.f20123k = false;
        this.f20125l = false;
        this.f20127m = false;
        this.f20129n = false;
        ArrayList arrayList = this.f20094R;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((d) arrayList.get(i2)).resetFinalResolution();
        }
    }

    public void resetSolverVariables(C1531d c1531d) {
        this.f20085I.resetSolverVariable(c1531d);
        this.f20086J.resetSolverVariable(c1531d);
        this.f20087K.resetSolverVariable(c1531d);
        this.f20088L.resetSolverVariable(c1531d);
        this.f20089M.resetSolverVariable(c1531d);
        this.f20092P.resetSolverVariable(c1531d);
        this.f20090N.resetSolverVariable(c1531d);
        this.f20091O.resetSolverVariable(c1531d);
    }

    public void setBaselineDistance(int i2) {
        this.f20106b0 = i2;
        this.f20081E = i2 > 0;
    }

    public void setCompanionWidget(Object obj) {
        this.f20116g0 = obj;
    }

    public void setDebugName(String str) {
        this.f20120i0 = str;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0086 -> B:31:0x0087). Please report as a decompilation issue!!! */
    public void setDimensionRatio(String str) {
        float f3;
        int i2 = 0;
        if (str == null || str.length() == 0) {
            this.f20100X = 0.0f;
            return;
        }
        int length = str.length();
        int indexOf = str.indexOf(44);
        int i7 = -1;
        if (indexOf > 0 && indexOf < length - 1) {
            String substring = str.substring(0, indexOf);
            i7 = substring.equalsIgnoreCase("W") ? 0 : substring.equalsIgnoreCase("H") ? 1 : -1;
            r3 = indexOf + 1;
        }
        int indexOf2 = str.indexOf(58);
        if (indexOf2 < 0 || indexOf2 >= length - 1) {
            String substring2 = str.substring(r3);
            if (substring2.length() > 0) {
                f3 = Float.parseFloat(substring2);
            }
            f3 = i2;
        } else {
            String substring3 = str.substring(r3, indexOf2);
            String substring4 = str.substring(indexOf2 + 1);
            if (substring3.length() > 0 && substring4.length() > 0) {
                float parseFloat = Float.parseFloat(substring3);
                float parseFloat2 = Float.parseFloat(substring4);
                if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                    f3 = i7 == 1 ? Math.abs(parseFloat2 / parseFloat) : Math.abs(parseFloat / parseFloat2);
                }
            }
            f3 = i2;
        }
        i2 = (f3 > i2 ? 1 : (f3 == i2 ? 0 : -1));
        if (i2 > 0) {
            this.f20100X = f3;
            this.f20101Y = i7;
        }
    }

    public void setFinalBaseline(int i2) {
        if (this.f20081E) {
            int i7 = i2 - this.f20106b0;
            int i8 = this.f20099W + i7;
            this.f20104a0 = i7;
            this.f20086J.setFinalValue(i7);
            this.f20088L.setFinalValue(i8);
            this.f20089M.setFinalValue(i2);
            this.f20125l = true;
        }
    }

    public void setFinalHorizontal(int i2, int i7) {
        if (this.f20123k) {
            return;
        }
        this.f20085I.setFinalValue(i2);
        this.f20087K.setFinalValue(i7);
        this.f20102Z = i2;
        this.f20098V = i7 - i2;
        this.f20123k = true;
    }

    public void setFinalLeft(int i2) {
        this.f20085I.setFinalValue(i2);
        this.f20102Z = i2;
    }

    public void setFinalTop(int i2) {
        this.f20086J.setFinalValue(i2);
        this.f20104a0 = i2;
    }

    public void setFinalVertical(int i2, int i7) {
        if (this.f20125l) {
            return;
        }
        this.f20086J.setFinalValue(i2);
        this.f20088L.setFinalValue(i7);
        this.f20104a0 = i2;
        this.f20099W = i7 - i2;
        if (this.f20081E) {
            this.f20089M.setFinalValue(i2 + this.f20106b0);
        }
        this.f20125l = true;
    }

    public void setFrame(int i2, int i7, int i8, int i9) {
        int i10;
        int i11;
        int i12 = i8 - i2;
        int i13 = i9 - i7;
        this.f20102Z = i2;
        this.f20104a0 = i7;
        if (this.f20118h0 == 8) {
            this.f20098V = 0;
            this.f20099W = 0;
            return;
        }
        ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = this.f20096T;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = constraintWidget$DimensionBehaviourArr[0];
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.f5239b;
        if (constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour2 && i12 < (i11 = this.f20098V)) {
            i12 = i11;
        }
        if (constraintWidget$DimensionBehaviourArr[1] == constraintWidget$DimensionBehaviour2 && i13 < (i10 = this.f20099W)) {
            i13 = i10;
        }
        this.f20098V = i12;
        this.f20099W = i13;
        int i14 = this.f20110d0;
        if (i13 < i14) {
            this.f20099W = i14;
        }
        int i15 = this.f20108c0;
        if (i12 < i15) {
            this.f20098V = i15;
        }
        int i16 = this.f20140v;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = ConstraintWidget$DimensionBehaviour.f5241f;
        if (i16 > 0 && constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour3) {
            this.f20098V = Math.min(this.f20098V, i16);
        }
        int i17 = this.f20143y;
        if (i17 > 0 && constraintWidget$DimensionBehaviourArr[1] == constraintWidget$DimensionBehaviour3) {
            this.f20099W = Math.min(this.f20099W, i17);
        }
        int i18 = this.f20098V;
        if (i12 != i18) {
            this.f20117h = i18;
        }
        int i19 = this.f20099W;
        if (i13 != i19) {
            this.f20119i = i19;
        }
    }

    public void setHasBaseline(boolean z6) {
        this.f20081E = z6;
    }

    public void setHeight(int i2) {
        this.f20099W = i2;
        int i7 = this.f20110d0;
        if (i2 < i7) {
            this.f20099W = i7;
        }
    }

    public void setHorizontalBiasPercent(float f3) {
        this.f20112e0 = f3;
    }

    public void setHorizontalChainStyle(int i2) {
        this.f20122j0 = i2;
    }

    public void setHorizontalDimension(int i2, int i7) {
        this.f20102Z = i2;
        int i8 = i7 - i2;
        this.f20098V = i8;
        int i9 = this.f20108c0;
        if (i8 < i9) {
            this.f20098V = i9;
        }
    }

    public void setHorizontalDimensionBehaviour(ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour) {
        this.f20096T[0] = constraintWidget$DimensionBehaviour;
    }

    public void setHorizontalMatchStyle(int i2, int i7, int i8, float f3) {
        this.f20136r = i2;
        this.f20139u = i7;
        if (i8 == Integer.MAX_VALUE) {
            i8 = 0;
        }
        this.f20140v = i8;
        this.f20141w = f3;
        if (f3 <= 0.0f || f3 >= 1.0f || i2 != 0) {
            return;
        }
        this.f20136r = 2;
    }

    public void setHorizontalWeight(float f3) {
        this.f20126l0[0] = f3;
    }

    public void setInBarrier(int i2, boolean z6) {
        this.f20095S[i2] = z6;
    }

    public void setInVirtualLayout(boolean z6) {
        this.f20082F = z6;
    }

    public void setLastMeasureSpec(int i2, int i7) {
        this.f20083G = i2;
        this.f20084H = i7;
        setMeasureRequested(false);
    }

    public void setMaxHeight(int i2) {
        this.f20079C[1] = i2;
    }

    public void setMaxWidth(int i2) {
        this.f20079C[0] = i2;
    }

    public void setMeasureRequested(boolean z6) {
        this.f20115g = z6;
    }

    public void setMinHeight(int i2) {
        if (i2 < 0) {
            this.f20110d0 = 0;
        } else {
            this.f20110d0 = i2;
        }
    }

    public void setMinWidth(int i2) {
        if (i2 < 0) {
            this.f20108c0 = 0;
        } else {
            this.f20108c0 = i2;
        }
    }

    public void setOrigin(int i2, int i7) {
        this.f20102Z = i2;
        this.f20104a0 = i7;
    }

    public void setParent(e eVar) {
        this.f20097U = eVar;
    }

    public void setVerticalBiasPercent(float f3) {
        this.f20114f0 = f3;
    }

    public void setVerticalChainStyle(int i2) {
        this.f20124k0 = i2;
    }

    public void setVerticalDimension(int i2, int i7) {
        this.f20104a0 = i2;
        int i8 = i7 - i2;
        this.f20099W = i8;
        int i9 = this.f20110d0;
        if (i8 < i9) {
            this.f20099W = i9;
        }
    }

    public void setVerticalDimensionBehaviour(ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour) {
        this.f20096T[1] = constraintWidget$DimensionBehaviour;
    }

    public void setVerticalMatchStyle(int i2, int i7, int i8, float f3) {
        this.f20137s = i2;
        this.f20142x = i7;
        if (i8 == Integer.MAX_VALUE) {
            i8 = 0;
        }
        this.f20143y = i8;
        this.f20144z = f3;
        if (f3 <= 0.0f || f3 >= 1.0f || i2 != 0) {
            return;
        }
        this.f20137s = 2;
    }

    public void setVerticalWeight(float f3) {
        this.f20126l0[1] = f3;
    }

    public void setVisibility(int i2) {
        this.f20118h0 = i2;
    }

    public void setWidth(int i2) {
        this.f20098V = i2;
        int i7 = this.f20108c0;
        if (i2 < i7) {
            this.f20098V = i7;
        }
    }

    public void setWrapBehaviorInParent(int i2) {
        if (i2 < 0 || i2 > 3) {
            return;
        }
        this.f20135q = i2;
    }

    public void setX(int i2) {
        this.f20102Z = i2;
    }

    public void setY(int i2) {
        this.f20104a0 = i2;
    }

    public void setupDimensionRatio(boolean z6, boolean z7, boolean z8, boolean z9) {
        if (this.f20077A == -1) {
            if (z8 && !z9) {
                this.f20077A = 0;
            } else if (!z8 && z9) {
                this.f20077A = 1;
                if (this.f20101Y == -1) {
                    this.f20078B = 1.0f / this.f20078B;
                }
            }
        }
        int i2 = this.f20077A;
        d dVar = this.f20087K;
        d dVar2 = this.f20085I;
        d dVar3 = this.f20088L;
        d dVar4 = this.f20086J;
        if (i2 == 0 && (!dVar4.isConnected() || !dVar3.isConnected())) {
            this.f20077A = 1;
        } else if (this.f20077A == 1 && (!dVar2.isConnected() || !dVar.isConnected())) {
            this.f20077A = 0;
        }
        if (this.f20077A == -1 && (!dVar4.isConnected() || !dVar3.isConnected() || !dVar2.isConnected() || !dVar.isConnected())) {
            if (dVar4.isConnected() && dVar3.isConnected()) {
                this.f20077A = 0;
            } else if (dVar2.isConnected() && dVar.isConnected()) {
                this.f20078B = 1.0f / this.f20078B;
                this.f20077A = 1;
            }
        }
        if (this.f20077A == -1) {
            int i7 = this.f20139u;
            if (i7 > 0 && this.f20142x == 0) {
                this.f20077A = 0;
            } else {
                if (i7 != 0 || this.f20142x <= 0) {
                    return;
                }
                this.f20078B = 1.0f / this.f20078B;
                this.f20077A = 1;
            }
        }
    }

    public String toString() {
        StringBuilder o6 = b.c.o("");
        o6.append(this.f20120i0 != null ? A.i.o(new StringBuilder("id: "), this.f20120i0, StringUtils.SPACE) : "");
        o6.append("(");
        o6.append(this.f20102Z);
        o6.append(", ");
        o6.append(this.f20104a0);
        o6.append(") - (");
        o6.append(this.f20098V);
        o6.append(" x ");
        return A.i.m(o6, this.f20099W, ")");
    }

    public void updateFromRuns(boolean z6, boolean z7) {
        int i2;
        int i7;
        boolean isResolved = z6 & this.f20109d.isResolved();
        boolean isResolved2 = z7 & this.f20111e.isResolved();
        androidx.constraintlayout.core.widgets.analyzer.d dVar = this.f20109d;
        int i8 = dVar.f5279h.f5262g;
        androidx.constraintlayout.core.widgets.analyzer.e eVar = this.f20111e;
        int i9 = eVar.f5279h.f5262g;
        int i10 = dVar.f5280i.f5262g;
        int i11 = eVar.f5280i.f5262g;
        int i12 = i11 - i9;
        if (i10 - i8 < 0 || i12 < 0 || i8 == Integer.MIN_VALUE || i8 == Integer.MAX_VALUE || i9 == Integer.MIN_VALUE || i9 == Integer.MAX_VALUE || i10 == Integer.MIN_VALUE || i10 == Integer.MAX_VALUE || i11 == Integer.MIN_VALUE || i11 == Integer.MAX_VALUE) {
            i10 = 0;
            i8 = 0;
            i11 = 0;
            i9 = 0;
        }
        int i13 = i10 - i8;
        int i14 = i11 - i9;
        if (isResolved) {
            this.f20102Z = i8;
        }
        if (isResolved2) {
            this.f20104a0 = i9;
        }
        if (this.f20118h0 == 8) {
            this.f20098V = 0;
            this.f20099W = 0;
            return;
        }
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.f5239b;
        ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = this.f20096T;
        if (isResolved) {
            if (constraintWidget$DimensionBehaviourArr[0] == constraintWidget$DimensionBehaviour && i13 < (i7 = this.f20098V)) {
                i13 = i7;
            }
            this.f20098V = i13;
            int i15 = this.f20108c0;
            if (i13 < i15) {
                this.f20098V = i15;
            }
        }
        if (isResolved2) {
            if (constraintWidget$DimensionBehaviourArr[1] == constraintWidget$DimensionBehaviour && i14 < (i2 = this.f20099W)) {
                i14 = i2;
            }
            this.f20099W = i14;
            int i16 = this.f20110d0;
            if (i14 < i16) {
                this.f20099W = i16;
            }
        }
    }

    public void updateFromSolver(C1533f c1533f, boolean z6) {
        androidx.constraintlayout.core.widgets.analyzer.e eVar;
        androidx.constraintlayout.core.widgets.analyzer.d dVar;
        int objectVariableValue = c1533f.getObjectVariableValue(this.f20085I);
        int objectVariableValue2 = c1533f.getObjectVariableValue(this.f20086J);
        int objectVariableValue3 = c1533f.getObjectVariableValue(this.f20087K);
        int objectVariableValue4 = c1533f.getObjectVariableValue(this.f20088L);
        if (z6 && (dVar = this.f20109d) != null) {
            androidx.constraintlayout.core.widgets.analyzer.a aVar = dVar.f5279h;
            if (aVar.f5265j) {
                androidx.constraintlayout.core.widgets.analyzer.a aVar2 = dVar.f5280i;
                if (aVar2.f5265j) {
                    objectVariableValue = aVar.f5262g;
                    objectVariableValue3 = aVar2.f5262g;
                }
            }
        }
        if (z6 && (eVar = this.f20111e) != null) {
            androidx.constraintlayout.core.widgets.analyzer.a aVar3 = eVar.f5279h;
            if (aVar3.f5265j) {
                androidx.constraintlayout.core.widgets.analyzer.a aVar4 = eVar.f5280i;
                if (aVar4.f5265j) {
                    objectVariableValue2 = aVar3.f5262g;
                    objectVariableValue4 = aVar4.f5262g;
                }
            }
        }
        int i2 = objectVariableValue4 - objectVariableValue2;
        if (objectVariableValue3 - objectVariableValue < 0 || i2 < 0 || objectVariableValue == Integer.MIN_VALUE || objectVariableValue == Integer.MAX_VALUE || objectVariableValue2 == Integer.MIN_VALUE || objectVariableValue2 == Integer.MAX_VALUE || objectVariableValue3 == Integer.MIN_VALUE || objectVariableValue3 == Integer.MAX_VALUE || objectVariableValue4 == Integer.MIN_VALUE || objectVariableValue4 == Integer.MAX_VALUE) {
            objectVariableValue = 0;
            objectVariableValue4 = 0;
            objectVariableValue2 = 0;
            objectVariableValue3 = 0;
        }
        setFrame(objectVariableValue, objectVariableValue2, objectVariableValue3, objectVariableValue4);
    }

    public void connect(ConstraintAnchor$Type constraintAnchor$Type, e eVar, ConstraintAnchor$Type constraintAnchor$Type2, int i2) {
        boolean z6;
        ConstraintAnchor$Type constraintAnchor$Type3 = ConstraintAnchor$Type.f5235n;
        ConstraintAnchor$Type constraintAnchor$Type4 = ConstraintAnchor$Type.f5237q;
        ConstraintAnchor$Type constraintAnchor$Type5 = ConstraintAnchor$Type.f5236p;
        ConstraintAnchor$Type constraintAnchor$Type6 = ConstraintAnchor$Type.f5230b;
        ConstraintAnchor$Type constraintAnchor$Type7 = ConstraintAnchor$Type.f5231e;
        ConstraintAnchor$Type constraintAnchor$Type8 = ConstraintAnchor$Type.f5232f;
        ConstraintAnchor$Type constraintAnchor$Type9 = ConstraintAnchor$Type.f5233j;
        if (constraintAnchor$Type == constraintAnchor$Type3) {
            if (constraintAnchor$Type2 != constraintAnchor$Type3) {
                if (constraintAnchor$Type2 == constraintAnchor$Type6 || constraintAnchor$Type2 == constraintAnchor$Type8) {
                    connect(constraintAnchor$Type6, eVar, constraintAnchor$Type2, 0);
                    connect(constraintAnchor$Type8, eVar, constraintAnchor$Type2, 0);
                    getAnchor(constraintAnchor$Type3).connect(eVar.getAnchor(constraintAnchor$Type2), 0);
                    return;
                } else {
                    if (constraintAnchor$Type2 == constraintAnchor$Type7 || constraintAnchor$Type2 == constraintAnchor$Type9) {
                        connect(constraintAnchor$Type7, eVar, constraintAnchor$Type2, 0);
                        connect(constraintAnchor$Type9, eVar, constraintAnchor$Type2, 0);
                        getAnchor(constraintAnchor$Type3).connect(eVar.getAnchor(constraintAnchor$Type2), 0);
                        return;
                    }
                    return;
                }
            }
            d anchor = getAnchor(constraintAnchor$Type6);
            d anchor2 = getAnchor(constraintAnchor$Type8);
            d anchor3 = getAnchor(constraintAnchor$Type7);
            d anchor4 = getAnchor(constraintAnchor$Type9);
            boolean z7 = true;
            if ((anchor == null || !anchor.isConnected()) && (anchor2 == null || !anchor2.isConnected())) {
                connect(constraintAnchor$Type6, eVar, constraintAnchor$Type6, 0);
                connect(constraintAnchor$Type8, eVar, constraintAnchor$Type8, 0);
                z6 = true;
            } else {
                z6 = false;
            }
            if ((anchor3 == null || !anchor3.isConnected()) && (anchor4 == null || !anchor4.isConnected())) {
                connect(constraintAnchor$Type7, eVar, constraintAnchor$Type7, 0);
                connect(constraintAnchor$Type9, eVar, constraintAnchor$Type9, 0);
            } else {
                z7 = false;
            }
            if (z6 && z7) {
                getAnchor(constraintAnchor$Type3).connect(eVar.getAnchor(constraintAnchor$Type3), 0);
                return;
            } else if (z6) {
                getAnchor(constraintAnchor$Type5).connect(eVar.getAnchor(constraintAnchor$Type5), 0);
                return;
            } else {
                if (z7) {
                    getAnchor(constraintAnchor$Type4).connect(eVar.getAnchor(constraintAnchor$Type4), 0);
                    return;
                }
                return;
            }
        }
        if (constraintAnchor$Type == constraintAnchor$Type5 && (constraintAnchor$Type2 == constraintAnchor$Type6 || constraintAnchor$Type2 == constraintAnchor$Type8)) {
            d anchor5 = getAnchor(constraintAnchor$Type6);
            d anchor6 = eVar.getAnchor(constraintAnchor$Type2);
            d anchor7 = getAnchor(constraintAnchor$Type8);
            anchor5.connect(anchor6, 0);
            anchor7.connect(anchor6, 0);
            getAnchor(constraintAnchor$Type5).connect(anchor6, 0);
            return;
        }
        if (constraintAnchor$Type == constraintAnchor$Type4 && (constraintAnchor$Type2 == constraintAnchor$Type7 || constraintAnchor$Type2 == constraintAnchor$Type9)) {
            d anchor8 = eVar.getAnchor(constraintAnchor$Type2);
            getAnchor(constraintAnchor$Type7).connect(anchor8, 0);
            getAnchor(constraintAnchor$Type9).connect(anchor8, 0);
            getAnchor(constraintAnchor$Type4).connect(anchor8, 0);
            return;
        }
        if (constraintAnchor$Type == constraintAnchor$Type5 && constraintAnchor$Type2 == constraintAnchor$Type5) {
            getAnchor(constraintAnchor$Type6).connect(eVar.getAnchor(constraintAnchor$Type6), 0);
            getAnchor(constraintAnchor$Type8).connect(eVar.getAnchor(constraintAnchor$Type8), 0);
            getAnchor(constraintAnchor$Type5).connect(eVar.getAnchor(constraintAnchor$Type2), 0);
            return;
        }
        if (constraintAnchor$Type == constraintAnchor$Type4 && constraintAnchor$Type2 == constraintAnchor$Type4) {
            getAnchor(constraintAnchor$Type7).connect(eVar.getAnchor(constraintAnchor$Type7), 0);
            getAnchor(constraintAnchor$Type9).connect(eVar.getAnchor(constraintAnchor$Type9), 0);
            getAnchor(constraintAnchor$Type4).connect(eVar.getAnchor(constraintAnchor$Type2), 0);
            return;
        }
        d anchor9 = getAnchor(constraintAnchor$Type);
        d anchor10 = eVar.getAnchor(constraintAnchor$Type2);
        if (anchor9.isValidConnection(anchor10)) {
            ConstraintAnchor$Type constraintAnchor$Type10 = ConstraintAnchor$Type.f5234m;
            if (constraintAnchor$Type == constraintAnchor$Type10) {
                d anchor11 = getAnchor(constraintAnchor$Type7);
                d anchor12 = getAnchor(constraintAnchor$Type9);
                if (anchor11 != null) {
                    anchor11.reset();
                }
                if (anchor12 != null) {
                    anchor12.reset();
                }
            } else if (constraintAnchor$Type == constraintAnchor$Type7 || constraintAnchor$Type == constraintAnchor$Type9) {
                d anchor13 = getAnchor(constraintAnchor$Type10);
                if (anchor13 != null) {
                    anchor13.reset();
                }
                d anchor14 = getAnchor(constraintAnchor$Type3);
                if (anchor14.getTarget() != anchor10) {
                    anchor14.reset();
                }
                d opposite = getAnchor(constraintAnchor$Type).getOpposite();
                d anchor15 = getAnchor(constraintAnchor$Type4);
                if (anchor15.isConnected()) {
                    opposite.reset();
                    anchor15.reset();
                }
            } else if (constraintAnchor$Type == constraintAnchor$Type6 || constraintAnchor$Type == constraintAnchor$Type8) {
                d anchor16 = getAnchor(constraintAnchor$Type3);
                if (anchor16.getTarget() != anchor10) {
                    anchor16.reset();
                }
                d opposite2 = getAnchor(constraintAnchor$Type).getOpposite();
                d anchor17 = getAnchor(constraintAnchor$Type5);
                if (anchor17.isConnected()) {
                    opposite2.reset();
                    anchor17.reset();
                }
            }
            anchor9.connect(anchor10, i2);
        }
    }
}
