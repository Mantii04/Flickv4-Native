package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.R;
import androidx.media3.exoplayer.DefaultRenderersFactory;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.firebase.sessions.settings.RemoteSettings;
import cz.msebera.android.httpclient.impl.client.cache.CacheConfig;
import cz.msebera.android.httpclient.util.LangUtils;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParserException;
import s.C1602a;
import w.AbstractC1772a;
import w.AbstractC1773b;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f5503d = {0, 4, 8};

    /* renamed from: e, reason: collision with root package name */
    public static final SparseIntArray f5504e;

    /* renamed from: f, reason: collision with root package name */
    public static final SparseIntArray f5505f;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f5506a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final boolean f5507b = true;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f5508c = new HashMap();

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f5504e = sparseIntArray;
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        f5505f = sparseIntArray2;
        sparseIntArray.append(R.styleable.Constraint_layout_constraintLeft_toLeftOf, 25);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintLeft_toRightOf, 26);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintRight_toLeftOf, 29);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintRight_toRightOf, 30);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintTop_toTopOf, 36);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintTop_toBottomOf, 35);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintBottom_toTopOf, 4);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintBottom_toBottomOf, 3);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintBaseline_toBaselineOf, 1);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintBaseline_toTopOf, 91);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintBaseline_toBottomOf, 92);
        sparseIntArray.append(R.styleable.Constraint_layout_editor_absoluteX, 6);
        sparseIntArray.append(R.styleable.Constraint_layout_editor_absoluteY, 7);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintGuide_begin, 17);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintGuide_end, 18);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintGuide_percent, 19);
        sparseIntArray.append(R.styleable.Constraint_guidelineUseRtl, 99);
        sparseIntArray.append(R.styleable.Constraint_android_orientation, 27);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintStart_toEndOf, 32);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintStart_toStartOf, 33);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintEnd_toStartOf, 10);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintEnd_toEndOf, 9);
        sparseIntArray.append(R.styleable.Constraint_layout_goneMarginLeft, 13);
        sparseIntArray.append(R.styleable.Constraint_layout_goneMarginTop, 16);
        sparseIntArray.append(R.styleable.Constraint_layout_goneMarginRight, 14);
        sparseIntArray.append(R.styleable.Constraint_layout_goneMarginBottom, 11);
        sparseIntArray.append(R.styleable.Constraint_layout_goneMarginStart, 15);
        sparseIntArray.append(R.styleable.Constraint_layout_goneMarginEnd, 12);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintVertical_weight, 40);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintHorizontal_weight, 39);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintHorizontal_chainStyle, 41);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintVertical_chainStyle, 42);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintHorizontal_bias, 20);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintVertical_bias, 37);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintDimensionRatio, 5);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintLeft_creator, 87);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintTop_creator, 87);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintRight_creator, 87);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintBottom_creator, 87);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintBaseline_creator, 87);
        sparseIntArray.append(R.styleable.Constraint_android_layout_marginLeft, 24);
        sparseIntArray.append(R.styleable.Constraint_android_layout_marginRight, 28);
        sparseIntArray.append(R.styleable.Constraint_android_layout_marginStart, 31);
        sparseIntArray.append(R.styleable.Constraint_android_layout_marginEnd, 8);
        sparseIntArray.append(R.styleable.Constraint_android_layout_marginTop, 34);
        sparseIntArray.append(R.styleable.Constraint_android_layout_marginBottom, 2);
        sparseIntArray.append(R.styleable.Constraint_android_layout_width, 23);
        sparseIntArray.append(R.styleable.Constraint_android_layout_height, 21);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintWidth, 95);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintHeight, 96);
        sparseIntArray.append(R.styleable.Constraint_android_visibility, 22);
        sparseIntArray.append(R.styleable.Constraint_android_alpha, 43);
        sparseIntArray.append(R.styleable.Constraint_android_elevation, 44);
        sparseIntArray.append(R.styleable.Constraint_android_rotationX, 45);
        sparseIntArray.append(R.styleable.Constraint_android_rotationY, 46);
        sparseIntArray.append(R.styleable.Constraint_android_rotation, 60);
        sparseIntArray.append(R.styleable.Constraint_android_scaleX, 47);
        sparseIntArray.append(R.styleable.Constraint_android_scaleY, 48);
        sparseIntArray.append(R.styleable.Constraint_android_transformPivotX, 49);
        sparseIntArray.append(R.styleable.Constraint_android_transformPivotY, 50);
        sparseIntArray.append(R.styleable.Constraint_android_translationX, 51);
        sparseIntArray.append(R.styleable.Constraint_android_translationY, 52);
        sparseIntArray.append(R.styleable.Constraint_android_translationZ, 53);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintWidth_default, 54);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintHeight_default, 55);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintWidth_max, 56);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintHeight_max, 57);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintWidth_min, 58);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintHeight_min, 59);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintCircle, 61);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintCircleRadius, 62);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintCircleAngle, 63);
        sparseIntArray.append(R.styleable.Constraint_animateRelativeTo, 64);
        sparseIntArray.append(R.styleable.Constraint_transitionEasing, 65);
        sparseIntArray.append(R.styleable.Constraint_drawPath, 66);
        sparseIntArray.append(R.styleable.Constraint_transitionPathRotate, 67);
        sparseIntArray.append(R.styleable.Constraint_motionStagger, 79);
        sparseIntArray.append(R.styleable.Constraint_android_id, 38);
        sparseIntArray.append(R.styleable.Constraint_motionProgress, 68);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintWidth_percent, 69);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintHeight_percent, 70);
        sparseIntArray.append(R.styleable.Constraint_layout_wrapBehaviorInParent, 97);
        sparseIntArray.append(R.styleable.Constraint_chainUseRtl, 71);
        sparseIntArray.append(R.styleable.Constraint_barrierDirection, 72);
        sparseIntArray.append(R.styleable.Constraint_barrierMargin, 73);
        sparseIntArray.append(R.styleable.Constraint_constraint_referenced_ids, 74);
        sparseIntArray.append(R.styleable.Constraint_barrierAllowsGoneWidgets, 75);
        sparseIntArray.append(R.styleable.Constraint_pathMotionArc, 76);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintTag, 77);
        sparseIntArray.append(R.styleable.Constraint_visibilityMode, 78);
        sparseIntArray.append(R.styleable.Constraint_layout_constrainedWidth, 80);
        sparseIntArray.append(R.styleable.Constraint_layout_constrainedHeight, 81);
        sparseIntArray.append(R.styleable.Constraint_polarRelativeTo, 82);
        sparseIntArray.append(R.styleable.Constraint_transformPivotTarget, 83);
        sparseIntArray.append(R.styleable.Constraint_quantizeMotionSteps, 84);
        sparseIntArray.append(R.styleable.Constraint_quantizeMotionPhase, 85);
        sparseIntArray.append(R.styleable.Constraint_quantizeMotionInterpolator, 86);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_editor_absoluteY, 6);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_editor_absoluteY, 7);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_orientation, 27);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_goneMarginLeft, 13);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_goneMarginTop, 16);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_goneMarginRight, 14);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_goneMarginBottom, 11);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_goneMarginStart, 15);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_goneMarginEnd, 12);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintVertical_weight, 40);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintHorizontal_weight, 39);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintHorizontal_chainStyle, 41);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintVertical_chainStyle, 42);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintHorizontal_bias, 20);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintVertical_bias, 37);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintDimensionRatio, 5);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintLeft_creator, 87);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintTop_creator, 87);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintRight_creator, 87);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintBottom_creator, 87);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintBaseline_creator, 87);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_layout_marginLeft, 24);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_layout_marginRight, 28);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_layout_marginStart, 31);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_layout_marginEnd, 8);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_layout_marginTop, 34);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_layout_marginBottom, 2);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_layout_width, 23);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_layout_height, 21);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintWidth, 95);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintHeight, 96);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_visibility, 22);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_alpha, 43);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_elevation, 44);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_rotationX, 45);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_rotationY, 46);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_rotation, 60);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_scaleX, 47);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_scaleY, 48);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_transformPivotX, 49);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_transformPivotY, 50);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_translationX, 51);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_translationY, 52);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_translationZ, 53);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintWidth_default, 54);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintHeight_default, 55);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintWidth_max, 56);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintHeight_max, 57);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintWidth_min, 58);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintHeight_min, 59);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintCircleRadius, 62);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintCircleAngle, 63);
        sparseIntArray2.append(R.styleable.ConstraintOverride_animateRelativeTo, 64);
        sparseIntArray2.append(R.styleable.ConstraintOverride_transitionEasing, 65);
        sparseIntArray2.append(R.styleable.ConstraintOverride_drawPath, 66);
        sparseIntArray2.append(R.styleable.ConstraintOverride_transitionPathRotate, 67);
        sparseIntArray2.append(R.styleable.ConstraintOverride_motionStagger, 79);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_id, 38);
        sparseIntArray2.append(R.styleable.ConstraintOverride_motionTarget, 98);
        sparseIntArray2.append(R.styleable.ConstraintOverride_motionProgress, 68);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintWidth_percent, 69);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintHeight_percent, 70);
        sparseIntArray2.append(R.styleable.ConstraintOverride_chainUseRtl, 71);
        sparseIntArray2.append(R.styleable.ConstraintOverride_barrierDirection, 72);
        sparseIntArray2.append(R.styleable.ConstraintOverride_barrierMargin, 73);
        sparseIntArray2.append(R.styleable.ConstraintOverride_constraint_referenced_ids, 74);
        sparseIntArray2.append(R.styleable.ConstraintOverride_barrierAllowsGoneWidgets, 75);
        sparseIntArray2.append(R.styleable.ConstraintOverride_pathMotionArc, 76);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintTag, 77);
        sparseIntArray2.append(R.styleable.ConstraintOverride_visibilityMode, 78);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constrainedWidth, 80);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constrainedHeight, 81);
        sparseIntArray2.append(R.styleable.ConstraintOverride_polarRelativeTo, 82);
        sparseIntArray2.append(R.styleable.ConstraintOverride_transformPivotTarget, 83);
        sparseIntArray2.append(R.styleable.ConstraintOverride_quantizeMotionSteps, 84);
        sparseIntArray2.append(R.styleable.ConstraintOverride_quantizeMotionPhase, 85);
        sparseIntArray2.append(R.styleable.ConstraintOverride_quantizeMotionInterpolator, 86);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_wrapBehaviorInParent, 97);
    }

    public static int[] b(a aVar, String str) {
        int i2;
        Object designInformation;
        String[] split = str.split(",");
        Context context = aVar.getContext();
        int[] iArr = new int[split.length];
        int i7 = 0;
        int i8 = 0;
        while (i7 < split.length) {
            String trim = split[i7].trim();
            try {
                i2 = R.id.class.getField(trim).getInt(null);
            } catch (Exception unused) {
                i2 = 0;
            }
            if (i2 == 0) {
                i2 = context.getResources().getIdentifier(trim, "id", context.getPackageName());
            }
            if (i2 == 0 && aVar.isInEditMode() && (aVar.getParent() instanceof ConstraintLayout) && (designInformation = ((ConstraintLayout) aVar.getParent()).getDesignInformation(0, trim)) != null && (designInformation instanceof Integer)) {
                i2 = ((Integer) designInformation).intValue();
            }
            iArr[i8] = i2;
            i7++;
            i8++;
        }
        return i8 != split.length ? Arrays.copyOf(iArr, i8) : iArr;
    }

    public static x.d c(Context context, AttributeSet attributeSet, boolean z6) {
        int i2;
        boolean z7;
        int i7;
        x.d dVar = new x.d();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, z6 ? R.styleable.ConstraintOverride : R.styleable.Constraint);
        int[] iArr = f5503d;
        SparseIntArray sparseIntArray = f5504e;
        j jVar = dVar.f20717b;
        k kVar = dVar.f20720e;
        i iVar = dVar.f20718c;
        h hVar = dVar.f20719d;
        if (z6) {
            x.c cVar = new x.c();
            cVar.f20704a = new int[10];
            cVar.f20705b = new int[10];
            cVar.f20706c = 0;
            cVar.f20707d = new int[10];
            cVar.f20708e = new float[10];
            cVar.f20709f = 0;
            cVar.f20710g = new int[5];
            cVar.f20711h = new String[5];
            cVar.f20712i = 0;
            cVar.f20713j = new int[4];
            cVar.f20714k = new boolean[4];
            cVar.f20715l = 0;
            iVar.getClass();
            hVar.getClass();
            jVar.getClass();
            kVar.getClass();
            int i8 = 0;
            for (int indexCount = obtainStyledAttributes.getIndexCount(); i8 < indexCount; indexCount = i7) {
                int index = obtainStyledAttributes.getIndex(i8);
                int i9 = i8;
                switch (f5505f.get(index)) {
                    case 2:
                        i7 = indexCount;
                        cVar.b(2, obtainStyledAttributes.getDimensionPixelSize(index, hVar.f5416I));
                        break;
                    case 3:
                    case 4:
                    case 9:
                    case 10:
                    case 25:
                    case 26:
                    case 29:
                    case 30:
                    case 32:
                    case 33:
                    case 35:
                    case 36:
                    case 61:
                    case 88:
                    case 89:
                    case 90:
                    case 91:
                    case 92:
                    default:
                        StringBuilder sb = new StringBuilder("Unknown attribute 0x");
                        i7 = indexCount;
                        sb.append(Integer.toHexString(index));
                        sb.append("   ");
                        sb.append(sparseIntArray.get(index));
                        Log.w("ConstraintSet", sb.toString());
                        break;
                    case 5:
                        i7 = indexCount;
                        cVar.c(5, obtainStyledAttributes.getString(index));
                        break;
                    case 6:
                        i7 = indexCount;
                        cVar.b(6, obtainStyledAttributes.getDimensionPixelOffset(index, hVar.f5410C));
                        break;
                    case 7:
                        i7 = indexCount;
                        cVar.b(7, obtainStyledAttributes.getDimensionPixelOffset(index, hVar.f5411D));
                        break;
                    case 8:
                        i7 = indexCount;
                        cVar.b(8, obtainStyledAttributes.getDimensionPixelSize(index, hVar.f5417J));
                        break;
                    case 11:
                        i7 = indexCount;
                        cVar.b(11, obtainStyledAttributes.getDimensionPixelSize(index, hVar.f5423P));
                        break;
                    case 12:
                        i7 = indexCount;
                        cVar.b(12, obtainStyledAttributes.getDimensionPixelSize(index, hVar.f5424Q));
                        break;
                    case 13:
                        i7 = indexCount;
                        cVar.b(13, obtainStyledAttributes.getDimensionPixelSize(index, hVar.f5420M));
                        break;
                    case 14:
                        i7 = indexCount;
                        cVar.b(14, obtainStyledAttributes.getDimensionPixelSize(index, hVar.f5422O));
                        break;
                    case 15:
                        i7 = indexCount;
                        cVar.b(15, obtainStyledAttributes.getDimensionPixelSize(index, hVar.f5425R));
                        break;
                    case 16:
                        i7 = indexCount;
                        cVar.b(16, obtainStyledAttributes.getDimensionPixelSize(index, hVar.f5421N));
                        break;
                    case 17:
                        i7 = indexCount;
                        cVar.b(17, obtainStyledAttributes.getDimensionPixelOffset(index, hVar.f5440d));
                        break;
                    case 18:
                        i7 = indexCount;
                        cVar.b(18, obtainStyledAttributes.getDimensionPixelOffset(index, hVar.f5442e));
                        break;
                    case 19:
                        i7 = indexCount;
                        cVar.a(obtainStyledAttributes.getFloat(index, hVar.f5444f), 19);
                        break;
                    case 20:
                        i7 = indexCount;
                        cVar.a(obtainStyledAttributes.getFloat(index, hVar.f5471w), 20);
                        break;
                    case 21:
                        i7 = indexCount;
                        cVar.b(21, obtainStyledAttributes.getLayoutDimension(index, hVar.f5438c));
                        break;
                    case 22:
                        i7 = indexCount;
                        cVar.b(22, iArr[obtainStyledAttributes.getInt(index, jVar.f5485a)]);
                        break;
                    case 23:
                        i7 = indexCount;
                        cVar.b(23, obtainStyledAttributes.getLayoutDimension(index, hVar.f5436b));
                        break;
                    case 24:
                        i7 = indexCount;
                        cVar.b(24, obtainStyledAttributes.getDimensionPixelSize(index, hVar.f5413F));
                        break;
                    case 27:
                        i7 = indexCount;
                        cVar.b(27, obtainStyledAttributes.getInt(index, hVar.f5412E));
                        break;
                    case 28:
                        i7 = indexCount;
                        cVar.b(28, obtainStyledAttributes.getDimensionPixelSize(index, hVar.f5414G));
                        break;
                    case 31:
                        i7 = indexCount;
                        cVar.b(31, obtainStyledAttributes.getDimensionPixelSize(index, hVar.f5418K));
                        break;
                    case 34:
                        i7 = indexCount;
                        cVar.b(34, obtainStyledAttributes.getDimensionPixelSize(index, hVar.f5415H));
                        break;
                    case LangUtils.HASH_OFFSET /* 37 */:
                        i7 = indexCount;
                        cVar.a(obtainStyledAttributes.getFloat(index, hVar.f5472x), 37);
                        break;
                    case 38:
                        i7 = indexCount;
                        int resourceId = obtainStyledAttributes.getResourceId(index, dVar.f20716a);
                        dVar.f20716a = resourceId;
                        cVar.b(38, resourceId);
                        break;
                    case 39:
                        i7 = indexCount;
                        cVar.a(obtainStyledAttributes.getFloat(index, hVar.f5428U), 39);
                        break;
                    case 40:
                        i7 = indexCount;
                        cVar.a(obtainStyledAttributes.getFloat(index, hVar.f5427T), 40);
                        break;
                    case 41:
                        i7 = indexCount;
                        cVar.b(41, obtainStyledAttributes.getInt(index, hVar.f5429V));
                        break;
                    case 42:
                        i7 = indexCount;
                        cVar.b(42, obtainStyledAttributes.getInt(index, hVar.f5430W));
                        break;
                    case 43:
                        i7 = indexCount;
                        cVar.a(obtainStyledAttributes.getFloat(index, jVar.f5487c), 43);
                        break;
                    case 44:
                        i7 = indexCount;
                        cVar.d(44, true);
                        cVar.a(obtainStyledAttributes.getDimension(index, kVar.f5502m), 44);
                        break;
                    case 45:
                        i7 = indexCount;
                        cVar.a(obtainStyledAttributes.getFloat(index, kVar.f5491b), 45);
                        break;
                    case 46:
                        i7 = indexCount;
                        cVar.a(obtainStyledAttributes.getFloat(index, kVar.f5492c), 46);
                        break;
                    case 47:
                        i7 = indexCount;
                        cVar.a(obtainStyledAttributes.getFloat(index, kVar.f5493d), 47);
                        break;
                    case 48:
                        i7 = indexCount;
                        cVar.a(obtainStyledAttributes.getFloat(index, kVar.f5494e), 48);
                        break;
                    case 49:
                        i7 = indexCount;
                        cVar.a(obtainStyledAttributes.getDimension(index, kVar.f5495f), 49);
                        break;
                    case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                        i7 = indexCount;
                        cVar.a(obtainStyledAttributes.getDimension(index, kVar.f5496g), 50);
                        break;
                    case 51:
                        i7 = indexCount;
                        cVar.a(obtainStyledAttributes.getDimension(index, kVar.f5498i), 51);
                        break;
                    case 52:
                        i7 = indexCount;
                        cVar.a(obtainStyledAttributes.getDimension(index, kVar.f5499j), 52);
                        break;
                    case 53:
                        i7 = indexCount;
                        cVar.a(obtainStyledAttributes.getDimension(index, kVar.f5500k), 53);
                        break;
                    case 54:
                        i7 = indexCount;
                        cVar.b(54, obtainStyledAttributes.getInt(index, hVar.f5431X));
                        break;
                    case 55:
                        i7 = indexCount;
                        cVar.b(55, obtainStyledAttributes.getInt(index, hVar.f5432Y));
                        break;
                    case 56:
                        i7 = indexCount;
                        cVar.b(56, obtainStyledAttributes.getDimensionPixelSize(index, hVar.f5433Z));
                        break;
                    case 57:
                        i7 = indexCount;
                        cVar.b(57, obtainStyledAttributes.getDimensionPixelSize(index, hVar.f5435a0));
                        break;
                    case 58:
                        i7 = indexCount;
                        cVar.b(58, obtainStyledAttributes.getDimensionPixelSize(index, hVar.f5437b0));
                        break;
                    case 59:
                        i7 = indexCount;
                        cVar.b(59, obtainStyledAttributes.getDimensionPixelSize(index, hVar.f5439c0));
                        break;
                    case CacheConfig.DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS /* 60 */:
                        i7 = indexCount;
                        cVar.a(obtainStyledAttributes.getFloat(index, kVar.f5490a), 60);
                        break;
                    case 62:
                        i7 = indexCount;
                        cVar.b(62, obtainStyledAttributes.getDimensionPixelSize(index, hVar.f5408A));
                        break;
                    case 63:
                        i7 = indexCount;
                        cVar.a(obtainStyledAttributes.getFloat(index, hVar.f5409B), 63);
                        break;
                    case 64:
                        i7 = indexCount;
                        cVar.b(64, d(obtainStyledAttributes, index, iVar.f5476a));
                        break;
                    case 65:
                        i7 = indexCount;
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            cVar.c(65, obtainStyledAttributes.getString(index));
                        } else {
                            cVar.c(65, C1602a.f19896a[obtainStyledAttributes.getInteger(index, 0)]);
                        }
                        break;
                    case 66:
                        i7 = indexCount;
                        cVar.b(66, obtainStyledAttributes.getInt(index, 0));
                        break;
                    case 67:
                        i7 = indexCount;
                        cVar.a(obtainStyledAttributes.getFloat(index, iVar.f5480e), 67);
                        break;
                    case 68:
                        i7 = indexCount;
                        cVar.a(obtainStyledAttributes.getFloat(index, jVar.f5488d), 68);
                        break;
                    case 69:
                        i7 = indexCount;
                        cVar.a(obtainStyledAttributes.getFloat(index, 1.0f), 69);
                        break;
                    case 70:
                        i7 = indexCount;
                        cVar.a(obtainStyledAttributes.getFloat(index, 1.0f), 70);
                        break;
                    case 71:
                        i7 = indexCount;
                        Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                        break;
                    case 72:
                        i7 = indexCount;
                        cVar.b(72, obtainStyledAttributes.getInt(index, hVar.f5445f0));
                        break;
                    case 73:
                        i7 = indexCount;
                        cVar.b(73, obtainStyledAttributes.getDimensionPixelSize(index, hVar.f5447g0));
                        break;
                    case 74:
                        i7 = indexCount;
                        cVar.c(74, obtainStyledAttributes.getString(index));
                        break;
                    case 75:
                        i7 = indexCount;
                        cVar.d(75, obtainStyledAttributes.getBoolean(index, hVar.f5461n0));
                        break;
                    case 76:
                        i7 = indexCount;
                        cVar.b(76, obtainStyledAttributes.getInt(index, iVar.f5478c));
                        break;
                    case 77:
                        i7 = indexCount;
                        cVar.c(77, obtainStyledAttributes.getString(index));
                        break;
                    case 78:
                        i7 = indexCount;
                        cVar.b(78, obtainStyledAttributes.getInt(index, jVar.f5486b));
                        break;
                    case 79:
                        i7 = indexCount;
                        cVar.a(obtainStyledAttributes.getFloat(index, iVar.f5479d), 79);
                        break;
                    case 80:
                        i7 = indexCount;
                        cVar.d(80, obtainStyledAttributes.getBoolean(index, hVar.f5457l0));
                        break;
                    case 81:
                        i7 = indexCount;
                        cVar.d(81, obtainStyledAttributes.getBoolean(index, hVar.f5459m0));
                        break;
                    case 82:
                        i7 = indexCount;
                        cVar.b(82, obtainStyledAttributes.getInteger(index, iVar.f5477b));
                        break;
                    case 83:
                        i7 = indexCount;
                        cVar.b(83, d(obtainStyledAttributes, index, kVar.f5497h));
                        break;
                    case 84:
                        i7 = indexCount;
                        cVar.b(84, obtainStyledAttributes.getInteger(index, iVar.f5482g));
                        break;
                    case 85:
                        i7 = indexCount;
                        cVar.a(obtainStyledAttributes.getFloat(index, iVar.f5481f), 85);
                        break;
                    case 86:
                        i7 = indexCount;
                        int i10 = obtainStyledAttributes.peekValue(index).type;
                        if (i10 == 1) {
                            int resourceId2 = obtainStyledAttributes.getResourceId(index, -1);
                            iVar.f5484i = resourceId2;
                            cVar.b(89, resourceId2);
                            if (iVar.f5484i != -1) {
                                cVar.b(88, -2);
                            }
                        } else if (i10 == 3) {
                            String string = obtainStyledAttributes.getString(index);
                            iVar.f5483h = string;
                            cVar.c(90, string);
                            if (iVar.f5483h.indexOf(RemoteSettings.FORWARD_SLASH_STRING) > 0) {
                                int resourceId3 = obtainStyledAttributes.getResourceId(index, -1);
                                iVar.f5484i = resourceId3;
                                cVar.b(89, resourceId3);
                                cVar.b(88, -2);
                            } else {
                                cVar.b(88, -1);
                            }
                        } else {
                            cVar.b(88, obtainStyledAttributes.getInteger(index, iVar.f5484i));
                        }
                        break;
                    case 87:
                        i7 = indexCount;
                        Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                        break;
                    case 93:
                        i7 = indexCount;
                        cVar.b(93, obtainStyledAttributes.getDimensionPixelSize(index, hVar.f5419L));
                        break;
                    case 94:
                        i7 = indexCount;
                        cVar.b(94, obtainStyledAttributes.getDimensionPixelSize(index, hVar.f5426S));
                        break;
                    case 95:
                        i7 = indexCount;
                        e(cVar, obtainStyledAttributes, index, 0);
                        break;
                    case 96:
                        i7 = indexCount;
                        e(cVar, obtainStyledAttributes, index, 1);
                        break;
                    case 97:
                        i7 = indexCount;
                        cVar.b(97, obtainStyledAttributes.getInt(index, hVar.f5463o0));
                        break;
                    case 98:
                        i7 = indexCount;
                        int i11 = AbstractC1773b.f20646D;
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            obtainStyledAttributes.getString(index);
                        } else {
                            dVar.f20716a = obtainStyledAttributes.getResourceId(index, dVar.f20716a);
                        }
                        break;
                    case 99:
                        i7 = indexCount;
                        cVar.d(99, obtainStyledAttributes.getBoolean(index, hVar.f5446g));
                        break;
                }
                i8 = i9 + 1;
            }
        } else {
            int i12 = 0;
            for (int indexCount2 = obtainStyledAttributes.getIndexCount(); i12 < indexCount2; indexCount2 = i2) {
                int index2 = obtainStyledAttributes.getIndex(i12);
                if (index2 != R.styleable.Constraint_android_id && R.styleable.Constraint_android_layout_marginStart != index2 && R.styleable.Constraint_android_layout_marginEnd != index2) {
                    iVar.getClass();
                    hVar.getClass();
                    jVar.getClass();
                    kVar.getClass();
                }
                switch (sparseIntArray.get(index2)) {
                    case 1:
                        i2 = indexCount2;
                        hVar.f5464p = d(obtainStyledAttributes, index2, hVar.f5464p);
                        break;
                    case 2:
                        i2 = indexCount2;
                        hVar.f5416I = obtainStyledAttributes.getDimensionPixelSize(index2, hVar.f5416I);
                        break;
                    case 3:
                        i2 = indexCount2;
                        hVar.f5462o = d(obtainStyledAttributes, index2, hVar.f5462o);
                        break;
                    case 4:
                        i2 = indexCount2;
                        hVar.f5460n = d(obtainStyledAttributes, index2, hVar.f5460n);
                        break;
                    case 5:
                        i2 = indexCount2;
                        hVar.f5473y = obtainStyledAttributes.getString(index2);
                        break;
                    case 6:
                        i2 = indexCount2;
                        hVar.f5410C = obtainStyledAttributes.getDimensionPixelOffset(index2, hVar.f5410C);
                        break;
                    case 7:
                        i2 = indexCount2;
                        hVar.f5411D = obtainStyledAttributes.getDimensionPixelOffset(index2, hVar.f5411D);
                        break;
                    case 8:
                        i2 = indexCount2;
                        hVar.f5417J = obtainStyledAttributes.getDimensionPixelSize(index2, hVar.f5417J);
                        break;
                    case 9:
                        i2 = indexCount2;
                        hVar.f5470v = d(obtainStyledAttributes, index2, hVar.f5470v);
                        break;
                    case 10:
                        i2 = indexCount2;
                        hVar.f5469u = d(obtainStyledAttributes, index2, hVar.f5469u);
                        break;
                    case 11:
                        i2 = indexCount2;
                        hVar.f5423P = obtainStyledAttributes.getDimensionPixelSize(index2, hVar.f5423P);
                        break;
                    case 12:
                        i2 = indexCount2;
                        hVar.f5424Q = obtainStyledAttributes.getDimensionPixelSize(index2, hVar.f5424Q);
                        break;
                    case 13:
                        i2 = indexCount2;
                        hVar.f5420M = obtainStyledAttributes.getDimensionPixelSize(index2, hVar.f5420M);
                        break;
                    case 14:
                        i2 = indexCount2;
                        hVar.f5422O = obtainStyledAttributes.getDimensionPixelSize(index2, hVar.f5422O);
                        break;
                    case 15:
                        i2 = indexCount2;
                        hVar.f5425R = obtainStyledAttributes.getDimensionPixelSize(index2, hVar.f5425R);
                        break;
                    case 16:
                        i2 = indexCount2;
                        hVar.f5421N = obtainStyledAttributes.getDimensionPixelSize(index2, hVar.f5421N);
                        break;
                    case 17:
                        i2 = indexCount2;
                        hVar.f5440d = obtainStyledAttributes.getDimensionPixelOffset(index2, hVar.f5440d);
                        break;
                    case 18:
                        i2 = indexCount2;
                        hVar.f5442e = obtainStyledAttributes.getDimensionPixelOffset(index2, hVar.f5442e);
                        break;
                    case 19:
                        i2 = indexCount2;
                        hVar.f5444f = obtainStyledAttributes.getFloat(index2, hVar.f5444f);
                        break;
                    case 20:
                        i2 = indexCount2;
                        hVar.f5471w = obtainStyledAttributes.getFloat(index2, hVar.f5471w);
                        break;
                    case 21:
                        i2 = indexCount2;
                        hVar.f5438c = obtainStyledAttributes.getLayoutDimension(index2, hVar.f5438c);
                        break;
                    case 22:
                        i2 = indexCount2;
                        int i13 = obtainStyledAttributes.getInt(index2, jVar.f5485a);
                        jVar.f5485a = i13;
                        jVar.f5485a = iArr[i13];
                        break;
                    case 23:
                        i2 = indexCount2;
                        hVar.f5436b = obtainStyledAttributes.getLayoutDimension(index2, hVar.f5436b);
                        break;
                    case 24:
                        i2 = indexCount2;
                        hVar.f5413F = obtainStyledAttributes.getDimensionPixelSize(index2, hVar.f5413F);
                        break;
                    case 25:
                        i2 = indexCount2;
                        hVar.f5448h = d(obtainStyledAttributes, index2, hVar.f5448h);
                        break;
                    case 26:
                        i2 = indexCount2;
                        hVar.f5450i = d(obtainStyledAttributes, index2, hVar.f5450i);
                        break;
                    case 27:
                        i2 = indexCount2;
                        hVar.f5412E = obtainStyledAttributes.getInt(index2, hVar.f5412E);
                        break;
                    case 28:
                        i2 = indexCount2;
                        hVar.f5414G = obtainStyledAttributes.getDimensionPixelSize(index2, hVar.f5414G);
                        break;
                    case 29:
                        i2 = indexCount2;
                        hVar.f5452j = d(obtainStyledAttributes, index2, hVar.f5452j);
                        break;
                    case 30:
                        i2 = indexCount2;
                        hVar.f5454k = d(obtainStyledAttributes, index2, hVar.f5454k);
                        break;
                    case 31:
                        i2 = indexCount2;
                        hVar.f5418K = obtainStyledAttributes.getDimensionPixelSize(index2, hVar.f5418K);
                        break;
                    case 32:
                        i2 = indexCount2;
                        hVar.f5467s = d(obtainStyledAttributes, index2, hVar.f5467s);
                        break;
                    case 33:
                        i2 = indexCount2;
                        hVar.f5468t = d(obtainStyledAttributes, index2, hVar.f5468t);
                        break;
                    case 34:
                        i2 = indexCount2;
                        hVar.f5415H = obtainStyledAttributes.getDimensionPixelSize(index2, hVar.f5415H);
                        break;
                    case 35:
                        i2 = indexCount2;
                        hVar.f5458m = d(obtainStyledAttributes, index2, hVar.f5458m);
                        break;
                    case 36:
                        i2 = indexCount2;
                        hVar.f5456l = d(obtainStyledAttributes, index2, hVar.f5456l);
                        break;
                    case LangUtils.HASH_OFFSET /* 37 */:
                        i2 = indexCount2;
                        hVar.f5472x = obtainStyledAttributes.getFloat(index2, hVar.f5472x);
                        break;
                    case 38:
                        i2 = indexCount2;
                        dVar.f20716a = obtainStyledAttributes.getResourceId(index2, dVar.f20716a);
                        break;
                    case 39:
                        i2 = indexCount2;
                        hVar.f5428U = obtainStyledAttributes.getFloat(index2, hVar.f5428U);
                        break;
                    case 40:
                        i2 = indexCount2;
                        hVar.f5427T = obtainStyledAttributes.getFloat(index2, hVar.f5427T);
                        break;
                    case 41:
                        i2 = indexCount2;
                        hVar.f5429V = obtainStyledAttributes.getInt(index2, hVar.f5429V);
                        break;
                    case 42:
                        i2 = indexCount2;
                        hVar.f5430W = obtainStyledAttributes.getInt(index2, hVar.f5430W);
                        break;
                    case 43:
                        i2 = indexCount2;
                        jVar.f5487c = obtainStyledAttributes.getFloat(index2, jVar.f5487c);
                        break;
                    case 44:
                        i2 = indexCount2;
                        kVar.f5501l = true;
                        kVar.f5502m = obtainStyledAttributes.getDimension(index2, kVar.f5502m);
                        break;
                    case 45:
                        i2 = indexCount2;
                        kVar.f5491b = obtainStyledAttributes.getFloat(index2, kVar.f5491b);
                        break;
                    case 46:
                        i2 = indexCount2;
                        kVar.f5492c = obtainStyledAttributes.getFloat(index2, kVar.f5492c);
                        break;
                    case 47:
                        i2 = indexCount2;
                        kVar.f5493d = obtainStyledAttributes.getFloat(index2, kVar.f5493d);
                        break;
                    case 48:
                        i2 = indexCount2;
                        kVar.f5494e = obtainStyledAttributes.getFloat(index2, kVar.f5494e);
                        break;
                    case 49:
                        i2 = indexCount2;
                        kVar.f5495f = obtainStyledAttributes.getDimension(index2, kVar.f5495f);
                        break;
                    case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                        i2 = indexCount2;
                        kVar.f5496g = obtainStyledAttributes.getDimension(index2, kVar.f5496g);
                        break;
                    case 51:
                        i2 = indexCount2;
                        kVar.f5498i = obtainStyledAttributes.getDimension(index2, kVar.f5498i);
                        break;
                    case 52:
                        i2 = indexCount2;
                        kVar.f5499j = obtainStyledAttributes.getDimension(index2, kVar.f5499j);
                        break;
                    case 53:
                        i2 = indexCount2;
                        kVar.f5500k = obtainStyledAttributes.getDimension(index2, kVar.f5500k);
                        break;
                    case 54:
                        i2 = indexCount2;
                        hVar.f5431X = obtainStyledAttributes.getInt(index2, hVar.f5431X);
                        break;
                    case 55:
                        i2 = indexCount2;
                        hVar.f5432Y = obtainStyledAttributes.getInt(index2, hVar.f5432Y);
                        break;
                    case 56:
                        i2 = indexCount2;
                        hVar.f5433Z = obtainStyledAttributes.getDimensionPixelSize(index2, hVar.f5433Z);
                        break;
                    case 57:
                        i2 = indexCount2;
                        hVar.f5435a0 = obtainStyledAttributes.getDimensionPixelSize(index2, hVar.f5435a0);
                        break;
                    case 58:
                        i2 = indexCount2;
                        hVar.f5437b0 = obtainStyledAttributes.getDimensionPixelSize(index2, hVar.f5437b0);
                        break;
                    case 59:
                        i2 = indexCount2;
                        hVar.f5439c0 = obtainStyledAttributes.getDimensionPixelSize(index2, hVar.f5439c0);
                        break;
                    case CacheConfig.DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS /* 60 */:
                        i2 = indexCount2;
                        kVar.f5490a = obtainStyledAttributes.getFloat(index2, kVar.f5490a);
                        break;
                    case 61:
                        i2 = indexCount2;
                        hVar.f5474z = d(obtainStyledAttributes, index2, hVar.f5474z);
                        break;
                    case 62:
                        i2 = indexCount2;
                        hVar.f5408A = obtainStyledAttributes.getDimensionPixelSize(index2, hVar.f5408A);
                        break;
                    case 63:
                        i2 = indexCount2;
                        hVar.f5409B = obtainStyledAttributes.getFloat(index2, hVar.f5409B);
                        break;
                    case 64:
                        i2 = indexCount2;
                        iVar.f5476a = d(obtainStyledAttributes, index2, iVar.f5476a);
                        break;
                    case 65:
                        i2 = indexCount2;
                        if (obtainStyledAttributes.peekValue(index2).type == 3) {
                            obtainStyledAttributes.getString(index2);
                            iVar.getClass();
                            break;
                        } else {
                            String str = C1602a.f19896a[obtainStyledAttributes.getInteger(index2, 0)];
                            iVar.getClass();
                        }
                    case 66:
                        i2 = indexCount2;
                        z7 = false;
                        obtainStyledAttributes.getInt(index2, 0);
                        iVar.getClass();
                        break;
                    case 67:
                        i2 = indexCount2;
                        iVar.f5480e = obtainStyledAttributes.getFloat(index2, iVar.f5480e);
                        break;
                    case 68:
                        i2 = indexCount2;
                        jVar.f5488d = obtainStyledAttributes.getFloat(index2, jVar.f5488d);
                        break;
                    case 69:
                        i2 = indexCount2;
                        hVar.f5441d0 = obtainStyledAttributes.getFloat(index2, 1.0f);
                        break;
                    case 70:
                        i2 = indexCount2;
                        hVar.f5443e0 = obtainStyledAttributes.getFloat(index2, 1.0f);
                        break;
                    case 71:
                        i2 = indexCount2;
                        Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                        break;
                    case 72:
                        i2 = indexCount2;
                        hVar.f5445f0 = obtainStyledAttributes.getInt(index2, hVar.f5445f0);
                        break;
                    case 73:
                        i2 = indexCount2;
                        hVar.f5447g0 = obtainStyledAttributes.getDimensionPixelSize(index2, hVar.f5447g0);
                        break;
                    case 74:
                        i2 = indexCount2;
                        hVar.f5453j0 = obtainStyledAttributes.getString(index2);
                        break;
                    case 75:
                        i2 = indexCount2;
                        hVar.f5461n0 = obtainStyledAttributes.getBoolean(index2, hVar.f5461n0);
                        break;
                    case 76:
                        i2 = indexCount2;
                        iVar.f5478c = obtainStyledAttributes.getInt(index2, iVar.f5478c);
                        break;
                    case 77:
                        i2 = indexCount2;
                        hVar.f5455k0 = obtainStyledAttributes.getString(index2);
                        break;
                    case 78:
                        i2 = indexCount2;
                        jVar.f5486b = obtainStyledAttributes.getInt(index2, jVar.f5486b);
                        break;
                    case 79:
                        i2 = indexCount2;
                        iVar.f5479d = obtainStyledAttributes.getFloat(index2, iVar.f5479d);
                        break;
                    case 80:
                        i2 = indexCount2;
                        hVar.f5457l0 = obtainStyledAttributes.getBoolean(index2, hVar.f5457l0);
                        break;
                    case 81:
                        i2 = indexCount2;
                        hVar.f5459m0 = obtainStyledAttributes.getBoolean(index2, hVar.f5459m0);
                        break;
                    case 82:
                        i2 = indexCount2;
                        iVar.f5477b = obtainStyledAttributes.getInteger(index2, iVar.f5477b);
                        break;
                    case 83:
                        i2 = indexCount2;
                        kVar.f5497h = d(obtainStyledAttributes, index2, kVar.f5497h);
                        break;
                    case 84:
                        i2 = indexCount2;
                        iVar.f5482g = obtainStyledAttributes.getInteger(index2, iVar.f5482g);
                        break;
                    case 85:
                        i2 = indexCount2;
                        iVar.f5481f = obtainStyledAttributes.getFloat(index2, iVar.f5481f);
                        break;
                    case 86:
                        i2 = indexCount2;
                        int i14 = obtainStyledAttributes.peekValue(index2).type;
                        if (i14 == 1) {
                            iVar.f5484i = obtainStyledAttributes.getResourceId(index2, -1);
                        } else if (i14 == 3) {
                            String string2 = obtainStyledAttributes.getString(index2);
                            iVar.f5483h = string2;
                            if (string2.indexOf(RemoteSettings.FORWARD_SLASH_STRING) > 0) {
                                iVar.f5484i = obtainStyledAttributes.getResourceId(index2, -1);
                            }
                        } else {
                            obtainStyledAttributes.getInteger(index2, iVar.f5484i);
                        }
                        break;
                    case 87:
                        i2 = indexCount2;
                        Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index2) + "   " + sparseIntArray.get(index2));
                        break;
                    case 88:
                    case 89:
                    case 90:
                    default:
                        StringBuilder sb2 = new StringBuilder("Unknown attribute 0x");
                        i2 = indexCount2;
                        sb2.append(Integer.toHexString(index2));
                        sb2.append("   ");
                        sb2.append(sparseIntArray.get(index2));
                        Log.w("ConstraintSet", sb2.toString());
                        break;
                    case 91:
                        i2 = indexCount2;
                        hVar.f5465q = d(obtainStyledAttributes, index2, hVar.f5465q);
                        break;
                    case 92:
                        i2 = indexCount2;
                        hVar.f5466r = d(obtainStyledAttributes, index2, hVar.f5466r);
                        break;
                    case 93:
                        i2 = indexCount2;
                        hVar.f5419L = obtainStyledAttributes.getDimensionPixelSize(index2, hVar.f5419L);
                        break;
                    case 94:
                        i2 = indexCount2;
                        hVar.f5426S = obtainStyledAttributes.getDimensionPixelSize(index2, hVar.f5426S);
                        break;
                    case 95:
                        i2 = indexCount2;
                        z7 = false;
                        e(hVar, obtainStyledAttributes, index2, 0);
                        break;
                    case 96:
                        i2 = indexCount2;
                        e(hVar, obtainStyledAttributes, index2, 1);
                        break;
                    case 97:
                        i2 = indexCount2;
                        hVar.f5463o0 = obtainStyledAttributes.getInt(index2, hVar.f5463o0);
                        break;
                }
                i12++;
            }
            if (hVar.f5453j0 != null) {
                hVar.f5451i0 = null;
            }
        }
        obtainStyledAttributes.recycle();
        return dVar;
    }

    public static int d(TypedArray typedArray, int i2, int i7) {
        int resourceId = typedArray.getResourceId(i2, i7);
        return resourceId == -1 ? typedArray.getInt(i2, -1) : resourceId;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void e(java.lang.Object r7, android.content.res.TypedArray r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.l.e(java.lang.Object, android.content.res.TypedArray, int, int):void");
    }

    public static void f(e eVar, String str) {
        if (str != null) {
            int length = str.length();
            int indexOf = str.indexOf(44);
            int i2 = -1;
            if (indexOf > 0 && indexOf < length - 1) {
                String substring = str.substring(0, indexOf);
                i2 = substring.equalsIgnoreCase("W") ? 0 : substring.equalsIgnoreCase("H") ? 1 : -1;
                r2 = indexOf + 1;
            }
            int indexOf2 = str.indexOf(58);
            try {
                if (indexOf2 < 0 || indexOf2 >= length - 1) {
                    String substring2 = str.substring(r2);
                    if (substring2.length() > 0) {
                        Float.parseFloat(substring2);
                    }
                } else {
                    String substring3 = str.substring(r2, indexOf2);
                    String substring4 = str.substring(indexOf2 + 1);
                    if (substring3.length() > 0 && substring4.length() > 0) {
                        float parseFloat = Float.parseFloat(substring3);
                        float parseFloat2 = Float.parseFloat(substring4);
                        if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                            if (i2 == 1) {
                                Math.abs(parseFloat2 / parseFloat);
                            } else {
                                Math.abs(parseFloat / parseFloat2);
                            }
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
        eVar.f5337G = str;
    }

    public final void a(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        HashMap hashMap = this.f5508c;
        HashSet hashSet = new HashSet(hashMap.keySet());
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = constraintLayout.getChildAt(i2);
            int id = childAt.getId();
            if (!hashMap.containsKey(Integer.valueOf(id))) {
                Log.w("ConstraintSet", "id unknown " + AbstractC1772a.getName(childAt));
            } else {
                if (this.f5507b && id == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (id != -1) {
                    if (hashMap.containsKey(Integer.valueOf(id))) {
                        hashSet.remove(Integer.valueOf(id));
                        x.d dVar = (x.d) hashMap.get(Integer.valueOf(id));
                        if (dVar != null) {
                            if (childAt instanceof a) {
                                h hVar = dVar.f20719d;
                                hVar.f5449h0 = 1;
                                a aVar = (a) childAt;
                                aVar.setId(id);
                                aVar.setType(hVar.f5445f0);
                                aVar.setMargin(hVar.f5447g0);
                                aVar.setAllowsGoneWidget(hVar.f5461n0);
                                int[] iArr = hVar.f5451i0;
                                if (iArr != null) {
                                    aVar.setReferencedIds(iArr);
                                } else {
                                    String str = hVar.f5453j0;
                                    if (str != null) {
                                        int[] b7 = b(aVar, str);
                                        hVar.f5451i0 = b7;
                                        aVar.setReferencedIds(b7);
                                    }
                                }
                            }
                            e eVar = (e) childAt.getLayoutParams();
                            eVar.validate();
                            dVar.applyTo(eVar);
                            b.setAttributes(childAt, dVar.f20721f);
                            childAt.setLayoutParams(eVar);
                            j jVar = dVar.f20717b;
                            if (jVar.f5486b == 0) {
                                childAt.setVisibility(jVar.f5485a);
                            }
                            childAt.setAlpha(jVar.f5487c);
                            k kVar = dVar.f20720e;
                            childAt.setRotation(kVar.f5490a);
                            childAt.setRotationX(kVar.f5491b);
                            childAt.setRotationY(kVar.f5492c);
                            childAt.setScaleX(kVar.f5493d);
                            childAt.setScaleY(kVar.f5494e);
                            if (kVar.f5497h != -1) {
                                if (((View) childAt.getParent()).findViewById(kVar.f5497h) != null) {
                                    float bottom = (r7.getBottom() + r7.getTop()) / 2.0f;
                                    float right = (r7.getRight() + r7.getLeft()) / 2.0f;
                                    if (childAt.getRight() - childAt.getLeft() > 0 && childAt.getBottom() - childAt.getTop() > 0) {
                                        childAt.setPivotX(right - childAt.getLeft());
                                        childAt.setPivotY(bottom - childAt.getTop());
                                    }
                                }
                            } else {
                                if (!Float.isNaN(kVar.f5495f)) {
                                    childAt.setPivotX(kVar.f5495f);
                                }
                                if (!Float.isNaN(kVar.f5496g)) {
                                    childAt.setPivotY(kVar.f5496g);
                                }
                            }
                            childAt.setTranslationX(kVar.f5498i);
                            childAt.setTranslationY(kVar.f5499j);
                            childAt.setTranslationZ(kVar.f5500k);
                            if (kVar.f5501l) {
                                childAt.setElevation(kVar.f5502m);
                            }
                        }
                    } else {
                        Log.v("ConstraintSet", "WARNING NO CONSTRAINTS for view " + id);
                    }
                }
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            x.d dVar2 = (x.d) hashMap.get(num);
            if (dVar2 != null) {
                h hVar2 = dVar2.f20719d;
                if (hVar2.f5449h0 == 1) {
                    a aVar2 = new a(constraintLayout.getContext());
                    aVar2.setId(num.intValue());
                    int[] iArr2 = hVar2.f5451i0;
                    if (iArr2 != null) {
                        aVar2.setReferencedIds(iArr2);
                    } else {
                        String str2 = hVar2.f5453j0;
                        if (str2 != null) {
                            int[] b8 = b(aVar2, str2);
                            hVar2.f5451i0 = b8;
                            aVar2.setReferencedIds(b8);
                        }
                    }
                    aVar2.setType(hVar2.f5445f0);
                    aVar2.setMargin(hVar2.f5447g0);
                    e generateDefaultLayoutParams = constraintLayout.generateDefaultLayoutParams();
                    aVar2.validateParams();
                    dVar2.applyTo(generateDefaultLayoutParams);
                    constraintLayout.addView(aVar2, generateDefaultLayoutParams);
                }
                if (hVar2.f5434a) {
                    View guideline = new Guideline(constraintLayout.getContext());
                    guideline.setId(num.intValue());
                    e generateDefaultLayoutParams2 = constraintLayout.generateDefaultLayoutParams();
                    dVar2.applyTo(generateDefaultLayoutParams2);
                    constraintLayout.addView(guideline, generateDefaultLayoutParams2);
                }
            }
        }
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt2 = constraintLayout.getChildAt(i7);
            if (childAt2 instanceof c) {
                ((c) childAt2).applyLayoutFeaturesInConstraintSet(constraintLayout);
            }
        }
    }

    public void applyTo(ConstraintLayout constraintLayout) {
        a(constraintLayout);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }

    public void clone(Context context, int i2) {
        clone((ConstraintLayout) LayoutInflater.from(context).inflate(i2, (ViewGroup) null));
    }

    public void constrainCircle(int i2, int i7, int i8, float f3) {
        HashMap hashMap = this.f5508c;
        if (!hashMap.containsKey(Integer.valueOf(i2))) {
            hashMap.put(Integer.valueOf(i2), new x.d());
        }
        h hVar = ((x.d) hashMap.get(Integer.valueOf(i2))).f20719d;
        hVar.f5474z = i7;
        hVar.f5408A = i8;
        hVar.f5409B = f3;
    }

    public void load(Context context, int i2) {
        XmlResourceParser xml = context.getResources().getXml(i2);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    x.d c7 = c(context, Xml.asAttributeSet(xml), false);
                    if (name.equalsIgnoreCase("Guideline")) {
                        c7.f20719d.f5434a = true;
                    }
                    this.f5508c.put(Integer.valueOf(c7.f20716a), c7);
                }
            }
        } catch (IOException e3) {
            e3.printStackTrace();
        } catch (XmlPullParserException e7) {
            e7.printStackTrace();
        }
    }

    public void clone(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        HashMap hashMap = this.f5508c;
        hashMap.clear();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = constraintLayout.getChildAt(i2);
            e eVar = (e) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f5507b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!hashMap.containsKey(Integer.valueOf(id))) {
                hashMap.put(Integer.valueOf(id), new x.d());
            }
            x.d dVar = (x.d) hashMap.get(Integer.valueOf(id));
            if (dVar != null) {
                dVar.f20721f = b.extractAttributes(this.f5506a, childAt);
                dVar.f20716a = id;
                int i7 = eVar.f5365e;
                h hVar = dVar.f20719d;
                hVar.f5448h = i7;
                hVar.f5450i = eVar.f5367f;
                hVar.f5452j = eVar.f5369g;
                hVar.f5454k = eVar.f5371h;
                hVar.f5456l = eVar.f5373i;
                hVar.f5458m = eVar.f5375j;
                hVar.f5460n = eVar.f5377k;
                hVar.f5462o = eVar.f5379l;
                hVar.f5464p = eVar.f5381m;
                hVar.f5465q = eVar.f5383n;
                hVar.f5466r = eVar.f5385o;
                hVar.f5467s = eVar.f5391s;
                hVar.f5468t = eVar.f5392t;
                hVar.f5469u = eVar.f5393u;
                hVar.f5470v = eVar.f5394v;
                hVar.f5471w = eVar.f5335E;
                hVar.f5472x = eVar.f5336F;
                hVar.f5473y = eVar.f5337G;
                hVar.f5474z = eVar.f5387p;
                hVar.f5408A = eVar.f5389q;
                hVar.f5409B = eVar.f5390r;
                hVar.f5410C = eVar.f5350T;
                hVar.f5411D = eVar.f5351U;
                hVar.f5412E = eVar.f5352V;
                hVar.f5444f = eVar.f5361c;
                hVar.f5440d = eVar.f5357a;
                hVar.f5442e = eVar.f5359b;
                hVar.f5436b = ((ViewGroup.MarginLayoutParams) eVar).width;
                hVar.f5438c = ((ViewGroup.MarginLayoutParams) eVar).height;
                hVar.f5413F = ((ViewGroup.MarginLayoutParams) eVar).leftMargin;
                hVar.f5414G = ((ViewGroup.MarginLayoutParams) eVar).rightMargin;
                hVar.f5415H = ((ViewGroup.MarginLayoutParams) eVar).topMargin;
                hVar.f5416I = ((ViewGroup.MarginLayoutParams) eVar).bottomMargin;
                hVar.f5419L = eVar.f5334D;
                hVar.f5427T = eVar.f5339I;
                hVar.f5428U = eVar.f5338H;
                hVar.f5430W = eVar.f5341K;
                hVar.f5429V = eVar.f5340J;
                hVar.f5457l0 = eVar.f5353W;
                hVar.f5459m0 = eVar.f5354X;
                hVar.f5431X = eVar.f5342L;
                hVar.f5432Y = eVar.f5343M;
                hVar.f5433Z = eVar.f5346P;
                hVar.f5435a0 = eVar.f5347Q;
                hVar.f5437b0 = eVar.f5344N;
                hVar.f5439c0 = eVar.f5345O;
                hVar.f5441d0 = eVar.f5348R;
                hVar.f5443e0 = eVar.f5349S;
                hVar.f5455k0 = eVar.f5355Y;
                hVar.f5421N = eVar.f5396x;
                hVar.f5423P = eVar.f5398z;
                hVar.f5420M = eVar.f5395w;
                hVar.f5422O = eVar.f5397y;
                hVar.f5425R = eVar.f5331A;
                hVar.f5424Q = eVar.f5332B;
                hVar.f5426S = eVar.f5333C;
                hVar.f5463o0 = eVar.f5356Z;
                hVar.f5417J = eVar.getMarginEnd();
                hVar.f5418K = eVar.getMarginStart();
                int visibility = childAt.getVisibility();
                j jVar = dVar.f20717b;
                jVar.f5485a = visibility;
                jVar.f5487c = childAt.getAlpha();
                float rotation = childAt.getRotation();
                k kVar = dVar.f20720e;
                kVar.f5490a = rotation;
                kVar.f5491b = childAt.getRotationX();
                kVar.f5492c = childAt.getRotationY();
                kVar.f5493d = childAt.getScaleX();
                kVar.f5494e = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE || pivotY != FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                    kVar.f5495f = pivotX;
                    kVar.f5496g = pivotY;
                }
                kVar.f5498i = childAt.getTranslationX();
                kVar.f5499j = childAt.getTranslationY();
                kVar.f5500k = childAt.getTranslationZ();
                if (kVar.f5501l) {
                    kVar.f5502m = childAt.getElevation();
                }
                if (childAt instanceof a) {
                    a aVar = (a) childAt;
                    hVar.f5461n0 = aVar.getAllowsGoneWidget();
                    hVar.f5451i0 = aVar.getReferencedIds();
                    hVar.f5445f0 = aVar.getType();
                    hVar.f5447g0 = aVar.getMargin();
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:81:0x01cc, code lost:
    
        continue;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void load(android.content.Context r10, org.xmlpull.v1.XmlPullParser r11) {
        /*
            Method dump skipped, instructions count: 558
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.l.load(android.content.Context, org.xmlpull.v1.XmlPullParser):void");
    }
}
