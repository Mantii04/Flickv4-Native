package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.constraintlayout.widget.R;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class c extends View {

    /* renamed from: b, reason: collision with root package name */
    public int[] f5323b;

    /* renamed from: e, reason: collision with root package name */
    public int f5324e;

    /* renamed from: f, reason: collision with root package name */
    public final Context f5325f;

    /* renamed from: j, reason: collision with root package name */
    public u.k f5326j;

    /* renamed from: m, reason: collision with root package name */
    public String f5327m;

    /* renamed from: n, reason: collision with root package name */
    public String f5328n;

    /* renamed from: p, reason: collision with root package name */
    public final HashMap f5329p;

    public c(Context context) {
        super(context);
        this.f5323b = new int[32];
        this.f5329p = new HashMap();
        this.f5325f = context;
        init(null);
    }

    public final void a(String str) {
        Context context;
        if (str == null || str.length() == 0 || (context = this.f5325f) == null) {
            return;
        }
        String trim = str.trim();
        if (getParent() instanceof ConstraintLayout) {
        }
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        int i2 = 0;
        if (isInEditMode() && constraintLayout != null) {
            Object designInformation = constraintLayout.getDesignInformation(0, trim);
            if (designInformation instanceof Integer) {
                i2 = ((Integer) designInformation).intValue();
            }
        }
        if (i2 == 0 && constraintLayout != null) {
            i2 = d(constraintLayout, trim);
        }
        if (i2 == 0) {
            try {
                i2 = R.id.class.getField(trim).getInt(null);
            } catch (Exception unused) {
            }
        }
        if (i2 == 0) {
            i2 = context.getResources().getIdentifier(trim, "id", context.getPackageName());
        }
        if (i2 != 0) {
            this.f5329p.put(Integer.valueOf(i2), trim);
            b(i2);
        } else {
            Log.w("ConstraintHelper", "Could not find id of \"" + trim + "\"");
        }
    }

    public void applyLayoutFeatures(ConstraintLayout constraintLayout) {
        int visibility = getVisibility();
        float elevation = getElevation();
        for (int i2 = 0; i2 < this.f5324e; i2++) {
            View viewById = constraintLayout.getViewById(this.f5323b[i2]);
            if (viewById != null) {
                viewById.setVisibility(visibility);
                if (elevation > 0.0f) {
                    viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                }
            }
        }
    }

    public void applyLayoutFeaturesInConstraintSet(ConstraintLayout constraintLayout) {
    }

    public final void b(int i2) {
        if (i2 == getId()) {
            return;
        }
        int i7 = this.f5324e + 1;
        int[] iArr = this.f5323b;
        if (i7 > iArr.length) {
            this.f5323b = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f5323b;
        int i8 = this.f5324e;
        iArr2[i8] = i2;
        this.f5324e = i8 + 1;
    }

    public final void c(String str) {
        if (str == null || str.length() == 0 || this.f5325f == null) {
            return;
        }
        String trim = str.trim();
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        if (constraintLayout == null) {
            Log.w("ConstraintHelper", "Parent not a ConstraintLayout");
            return;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = constraintLayout.getChildAt(i2);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if ((layoutParams instanceof e) && trim.equals(((e) layoutParams).f5355Y)) {
                if (childAt.getId() == -1) {
                    Log.w("ConstraintHelper", "to use ConstraintTag view " + childAt.getClass().getSimpleName() + " must have an ID");
                } else {
                    b(childAt.getId());
                }
            }
        }
    }

    public final int d(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        String str2;
        if (str != null && (resources = this.f5325f.getResources()) != null) {
            int childCount = constraintLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = constraintLayout.getChildAt(i2);
                if (childAt.getId() != -1) {
                    try {
                        str2 = resources.getResourceEntryName(childAt.getId());
                    } catch (Resources.NotFoundException unused) {
                        str2 = null;
                    }
                    if (str.equals(str2)) {
                        return childAt.getId();
                    }
                }
            }
        }
        return 0;
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.f5323b, this.f5324e);
    }

    public void init(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.ConstraintLayout_Layout_constraint_referenced_ids) {
                    String string = obtainStyledAttributes.getString(index);
                    this.f5327m = string;
                    setIds(string);
                } else if (index == R.styleable.ConstraintLayout_Layout_constraint_referenced_tags) {
                    String string2 = obtainStyledAttributes.getString(index);
                    this.f5328n = string2;
                    setReferenceTags(string2);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f5327m;
        if (str != null) {
            setIds(str);
        }
        String str2 = this.f5328n;
        if (str2 != null) {
            setReferenceTags(str2);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i7) {
        setMeasuredDimension(0, 0);
    }

    public abstract void resolveRtl(u.e eVar, boolean z6);

    public void setIds(String str) {
        this.f5327m = str;
        if (str == null) {
            return;
        }
        int i2 = 0;
        this.f5324e = 0;
        while (true) {
            int indexOf = str.indexOf(44, i2);
            if (indexOf == -1) {
                a(str.substring(i2));
                return;
            } else {
                a(str.substring(i2, indexOf));
                i2 = indexOf + 1;
            }
        }
    }

    public void setReferenceTags(String str) {
        this.f5328n = str;
        if (str == null) {
            return;
        }
        int i2 = 0;
        this.f5324e = 0;
        while (true) {
            int indexOf = str.indexOf(44, i2);
            if (indexOf == -1) {
                c(str.substring(i2));
                return;
            } else {
                c(str.substring(i2, indexOf));
                i2 = indexOf + 1;
            }
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.f5327m = null;
        this.f5324e = 0;
        for (int i2 : iArr) {
            b(i2);
        }
    }

    @Override // android.view.View
    public void setTag(int i2, Object obj) {
        super.setTag(i2, obj);
        if (obj == null && this.f5327m == null) {
            b(i2);
        }
    }

    public void updatePostLayout(ConstraintLayout constraintLayout) {
    }

    public void updatePostMeasure(ConstraintLayout constraintLayout) {
    }

    public void updatePreDraw(ConstraintLayout constraintLayout) {
    }

    public void updatePreLayout(ConstraintLayout constraintLayout) {
        if (isInEditMode()) {
            setIds(this.f5327m);
        }
        u.k kVar = this.f5326j;
        if (kVar == null) {
            return;
        }
        kVar.removeAllIds();
        for (int i2 = 0; i2 < this.f5324e; i2++) {
            int i7 = this.f5323b[i2];
            View viewById = constraintLayout.getViewById(i7);
            if (viewById == null) {
                HashMap hashMap = this.f5329p;
                String str = (String) hashMap.get(Integer.valueOf(i7));
                int d7 = d(constraintLayout, str);
                if (d7 != 0) {
                    this.f5323b[i2] = d7;
                    hashMap.put(Integer.valueOf(d7), str);
                    viewById = constraintLayout.getViewById(d7);
                }
            }
            if (viewById != null) {
                this.f5326j.add(constraintLayout.getViewWidget(viewById));
            }
        }
        this.f5326j.updateConstraints(constraintLayout.f5297f);
    }

    public void validateParams() {
        if (this.f5326j == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof e) {
            ((e) layoutParams).f5388p0 = this.f5326j;
        }
    }

    public c(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5323b = new int[32];
        this.f5329p = new HashMap();
        this.f5325f = context;
        init(attributeSet);
    }

    public void applyLayoutFeatures() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        applyLayoutFeatures((ConstraintLayout) parent);
    }
}
