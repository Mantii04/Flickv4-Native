package u;

import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import r.C1533f;

/* loaded from: classes.dex */
public abstract class l {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean[] f20217a = new boolean[3];

    public static void a(f fVar, C1533f c1533f, e eVar) {
        eVar.f20131o = -1;
        eVar.f20133p = -1;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = fVar.f20096T[0];
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.f5240e;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = ConstraintWidget$DimensionBehaviour.f5242j;
        ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = eVar.f20096T;
        if (constraintWidget$DimensionBehaviour != constraintWidget$DimensionBehaviour2 && constraintWidget$DimensionBehaviourArr[0] == constraintWidget$DimensionBehaviour3) {
            d dVar = eVar.f20085I;
            int i2 = dVar.f20074g;
            int width = fVar.getWidth();
            d dVar2 = eVar.f20087K;
            int i7 = width - dVar2.f20074g;
            dVar.f20076i = c1533f.createObjectVariable(dVar);
            dVar2.f20076i = c1533f.createObjectVariable(dVar2);
            c1533f.addEquality(dVar.f20076i, i2);
            c1533f.addEquality(dVar2.f20076i, i7);
            eVar.f20131o = 2;
            eVar.setHorizontalDimension(i2, i7);
        }
        if (fVar.f20096T[1] == constraintWidget$DimensionBehaviour2 || constraintWidget$DimensionBehaviourArr[1] != constraintWidget$DimensionBehaviour3) {
            return;
        }
        d dVar3 = eVar.f20086J;
        int i8 = dVar3.f20074g;
        int height = fVar.getHeight();
        d dVar4 = eVar.f20088L;
        int i9 = height - dVar4.f20074g;
        dVar3.f20076i = c1533f.createObjectVariable(dVar3);
        dVar4.f20076i = c1533f.createObjectVariable(dVar4);
        c1533f.addEquality(dVar3.f20076i, i8);
        c1533f.addEquality(dVar4.f20076i, i9);
        if (eVar.f20106b0 > 0 || eVar.getVisibility() == 8) {
            d dVar5 = eVar.f20089M;
            dVar5.f20076i = c1533f.createObjectVariable(dVar5);
            c1533f.addEquality(dVar5.f20076i, eVar.f20106b0 + i8);
        }
        eVar.f20133p = 2;
        eVar.setVerticalDimension(i8, i9);
    }

    public static final boolean enabled(int i2, int i7) {
        return (i2 & i7) == i7;
    }
}
