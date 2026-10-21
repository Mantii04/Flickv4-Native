package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.widgets.ConstraintAnchor$Type;
import androidx.media3.common.util.Log;
import com.google.firebase.sessions.settings.RemoteSettings;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import okhttp3.internal.http2.Http2Connection;
import org.xmlpull.v1.XmlPullParserException;
import x.C1795a;

/* loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {

    /* renamed from: C, reason: collision with root package name */
    public static x.f f5292C;

    /* renamed from: A, reason: collision with root package name */
    public int f5293A;

    /* renamed from: B, reason: collision with root package name */
    public int f5294B;

    /* renamed from: b, reason: collision with root package name */
    public final SparseArray f5295b;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f5296e;

    /* renamed from: f, reason: collision with root package name */
    public final u.f f5297f;

    /* renamed from: j, reason: collision with root package name */
    public int f5298j;

    /* renamed from: m, reason: collision with root package name */
    public int f5299m;

    /* renamed from: n, reason: collision with root package name */
    public int f5300n;

    /* renamed from: p, reason: collision with root package name */
    public int f5301p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f5302q;

    /* renamed from: r, reason: collision with root package name */
    public int f5303r;

    /* renamed from: s, reason: collision with root package name */
    public l f5304s;

    /* renamed from: t, reason: collision with root package name */
    public x.b f5305t;

    /* renamed from: u, reason: collision with root package name */
    public int f5306u;

    /* renamed from: v, reason: collision with root package name */
    public HashMap f5307v;

    /* renamed from: w, reason: collision with root package name */
    public int f5308w;

    /* renamed from: x, reason: collision with root package name */
    public int f5309x;

    /* renamed from: y, reason: collision with root package name */
    public final SparseArray f5310y;

    /* renamed from: z, reason: collision with root package name */
    public final C1795a f5311z;

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5295b = new SparseArray();
        this.f5296e = new ArrayList(4);
        this.f5297f = new u.f();
        this.f5298j = 0;
        this.f5299m = 0;
        this.f5300n = Log.LOG_LEVEL_OFF;
        this.f5301p = Log.LOG_LEVEL_OFF;
        this.f5302q = true;
        this.f5303r = 257;
        this.f5304s = null;
        this.f5305t = null;
        this.f5306u = -1;
        this.f5307v = new HashMap();
        this.f5308w = -1;
        this.f5309x = -1;
        this.f5310y = new SparseArray();
        this.f5311z = new C1795a(this, this);
        this.f5293A = 0;
        this.f5294B = 0;
        a(attributeSet, 0);
    }

    private int getPaddingWidth() {
        int max = Math.max(0, getPaddingRight()) + Math.max(0, getPaddingLeft());
        int max2 = Math.max(0, getPaddingEnd()) + Math.max(0, getPaddingStart());
        return max2 > 0 ? max2 : max;
    }

    public static x.f getSharedValues() {
        if (f5292C == null) {
            f5292C = new x.f();
        }
        return f5292C;
    }

    public final void a(AttributeSet attributeSet, int i2) {
        u.f fVar = this.f5297f;
        fVar.setCompanionWidget(this);
        fVar.setMeasurer(this.f5311z);
        this.f5295b.put(getId(), this);
        this.f5304s = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_Layout, i2, 0);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i7 = 0; i7 < indexCount; i7++) {
                int index = obtainStyledAttributes.getIndex(i7);
                if (index == R.styleable.ConstraintLayout_Layout_android_minWidth) {
                    this.f5298j = obtainStyledAttributes.getDimensionPixelOffset(index, this.f5298j);
                } else if (index == R.styleable.ConstraintLayout_Layout_android_minHeight) {
                    this.f5299m = obtainStyledAttributes.getDimensionPixelOffset(index, this.f5299m);
                } else if (index == R.styleable.ConstraintLayout_Layout_android_maxWidth) {
                    this.f5300n = obtainStyledAttributes.getDimensionPixelOffset(index, this.f5300n);
                } else if (index == R.styleable.ConstraintLayout_Layout_android_maxHeight) {
                    this.f5301p = obtainStyledAttributes.getDimensionPixelOffset(index, this.f5301p);
                } else if (index == R.styleable.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.f5303r = obtainStyledAttributes.getInt(index, this.f5303r);
                } else if (index == R.styleable.ConstraintLayout_Layout_layoutDescription) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            parseLayoutDescription(resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.f5305t = null;
                        }
                    }
                } else if (index == R.styleable.ConstraintLayout_Layout_constraintSet) {
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, 0);
                    try {
                        l lVar = new l();
                        this.f5304s = lVar;
                        lVar.load(getContext(), resourceId2);
                    } catch (Resources.NotFoundException unused2) {
                        this.f5304s = null;
                    }
                    this.f5306u = resourceId2;
                }
            }
            obtainStyledAttributes.recycle();
        }
        fVar.setOptimizationLevel(this.f5303r);
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0134  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void applyConstraintsFromLayoutParams(boolean r19, android.view.View r20, u.e r21, androidx.constraintlayout.widget.e r22, android.util.SparseArray<u.e> r23) {
        /*
            Method dump skipped, instructions count: 594
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.applyConstraintsFromLayoutParams(boolean, android.view.View, u.e, androidx.constraintlayout.widget.e, android.util.SparseArray):void");
    }

    public final void b(u.e eVar, e eVar2, SparseArray sparseArray, int i2, ConstraintAnchor$Type constraintAnchor$Type) {
        View view = (View) this.f5295b.get(i2);
        u.e eVar3 = (u.e) sparseArray.get(i2);
        if (eVar3 == null || view == null || !(view.getLayoutParams() instanceof e)) {
            return;
        }
        eVar2.f5362c0 = true;
        ConstraintAnchor$Type constraintAnchor$Type2 = ConstraintAnchor$Type.f5234m;
        if (constraintAnchor$Type == constraintAnchor$Type2) {
            e eVar4 = (e) view.getLayoutParams();
            eVar4.f5362c0 = true;
            eVar4.f5388p0.setHasBaseline(true);
        }
        eVar.getAnchor(constraintAnchor$Type2).connect(eVar3.getAnchor(constraintAnchor$Type), eVar2.f5334D, eVar2.f5333C, true);
        eVar.setHasBaseline(true);
        eVar.getAnchor(ConstraintAnchor$Type.f5231e).reset();
        eVar.getAnchor(ConstraintAnchor$Type.f5233j).reset();
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof e;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList arrayList = this.f5296e;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i2 = 0; i2 < size; i2++) {
                ((c) arrayList.get(i2)).updatePreDraw(this);
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            float width = getWidth();
            float height = getHeight();
            int childCount = getChildCount();
            for (int i7 = 0; i7 < childCount; i7++) {
                View childAt = getChildAt(i7);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] split = ((String) tag).split(",");
                    if (split.length == 4) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        int parseInt3 = Integer.parseInt(split[2]);
                        int i8 = (int) ((parseInt / 1080.0f) * width);
                        int i9 = (int) ((parseInt2 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f3 = i8;
                        float f7 = i9;
                        float f8 = i8 + ((int) ((parseInt3 / 1080.0f) * width));
                        canvas.drawLine(f3, f7, f8, f7, paint);
                        float parseInt4 = i9 + ((int) ((Integer.parseInt(split[3]) / 1920.0f) * height));
                        canvas.drawLine(f8, f7, f8, parseInt4, paint);
                        canvas.drawLine(f8, parseInt4, f3, parseInt4, paint);
                        canvas.drawLine(f3, parseInt4, f3, f7, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f3, f7, f8, parseInt4, paint);
                        canvas.drawLine(f3, parseInt4, f8, f7, paint);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public void forceLayout() {
        this.f5302q = true;
        this.f5308w = -1;
        this.f5309x = -1;
        super.forceLayout();
    }

    public Object getDesignInformation(int i2, Object obj) {
        if (i2 != 0 || !(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        HashMap hashMap = this.f5307v;
        if (hashMap == null || !hashMap.containsKey(str)) {
            return null;
        }
        return this.f5307v.get(str);
    }

    public int getMaxHeight() {
        return this.f5301p;
    }

    public int getMaxWidth() {
        return this.f5300n;
    }

    public int getMinHeight() {
        return this.f5299m;
    }

    public int getMinWidth() {
        return this.f5298j;
    }

    public int getOptimizationLevel() {
        return this.f5297f.getOptimizationLevel();
    }

    public String getSceneString() {
        int id;
        StringBuilder sb = new StringBuilder();
        u.f fVar = this.f5297f;
        if (fVar.f20121j == null) {
            int id2 = getId();
            if (id2 != -1) {
                fVar.f20121j = getContext().getResources().getResourceEntryName(id2);
            } else {
                fVar.f20121j = "parent";
            }
        }
        if (fVar.getDebugName() == null) {
            fVar.setDebugName(fVar.f20121j);
            android.util.Log.v("ConstraintLayout", " setDebugName " + fVar.getDebugName());
        }
        Iterator<u.e> it = fVar.getChildren().iterator();
        while (it.hasNext()) {
            u.e next = it.next();
            View view = (View) next.getCompanionWidget();
            if (view != null) {
                if (next.f20121j == null && (id = view.getId()) != -1) {
                    next.f20121j = getContext().getResources().getResourceEntryName(id);
                }
                if (next.getDebugName() == null) {
                    next.setDebugName(next.f20121j);
                    android.util.Log.v("ConstraintLayout", " setDebugName " + next.getDebugName());
                }
            }
        }
        fVar.getSceneString(sb);
        return sb.toString();
    }

    public View getViewById(int i2) {
        return (View) this.f5295b.get(i2);
    }

    public final u.e getViewWidget(View view) {
        if (view == this) {
            return this.f5297f;
        }
        if (view == null) {
            return null;
        }
        if (view.getLayoutParams() instanceof e) {
            return ((e) view.getLayoutParams()).f5388p0;
        }
        view.setLayoutParams(generateLayoutParams(view.getLayoutParams()));
        if (view.getLayoutParams() instanceof e) {
            return ((e) view.getLayoutParams()).f5388p0;
        }
        return null;
    }

    public boolean isRtl() {
        return (getContext().getApplicationInfo().flags & 4194304) != 0 && 1 == getLayoutDirection();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            e eVar = (e) childAt.getLayoutParams();
            u.e eVar2 = eVar.f5388p0;
            if (childAt.getVisibility() != 8 || eVar.f5364d0 || eVar.f5366e0 || isInEditMode) {
                int x6 = eVar2.getX();
                int y6 = eVar2.getY();
                childAt.layout(x6, y6, eVar2.getWidth() + x6, eVar2.getHeight() + y6);
            }
        }
        ArrayList arrayList = this.f5296e;
        int size = arrayList.size();
        if (size > 0) {
            for (int i11 = 0; i11 < size; i11++) {
                ((c) arrayList.get(i11)).updatePostLayout(this);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i7) {
        boolean z6;
        String resourceName;
        int id;
        u.e eVar;
        if (this.f5293A == i2) {
            int i8 = this.f5294B;
        }
        if (!this.f5302q) {
            int childCount = getChildCount();
            int i9 = 0;
            while (true) {
                if (i9 >= childCount) {
                    break;
                }
                if (getChildAt(i9).isLayoutRequested()) {
                    this.f5302q = true;
                    break;
                }
                i9++;
            }
        }
        this.f5293A = i2;
        this.f5294B = i7;
        boolean isRtl = isRtl();
        u.f fVar = this.f5297f;
        fVar.setRtl(isRtl);
        if (this.f5302q) {
            this.f5302q = false;
            int childCount2 = getChildCount();
            int i10 = 0;
            while (true) {
                if (i10 >= childCount2) {
                    z6 = false;
                    break;
                } else {
                    if (getChildAt(i10).isLayoutRequested()) {
                        z6 = true;
                        break;
                    }
                    i10++;
                }
            }
            if (z6) {
                boolean isInEditMode = isInEditMode();
                int childCount3 = getChildCount();
                for (int i11 = 0; i11 < childCount3; i11++) {
                    u.e viewWidget = getViewWidget(getChildAt(i11));
                    if (viewWidget != null) {
                        viewWidget.reset();
                    }
                }
                if (isInEditMode) {
                    for (int i12 = 0; i12 < childCount3; i12++) {
                        View childAt = getChildAt(i12);
                        try {
                            resourceName = getResources().getResourceName(childAt.getId());
                            setDesignInformation(0, resourceName, Integer.valueOf(childAt.getId()));
                            int indexOf = resourceName.indexOf(47);
                            if (indexOf != -1) {
                                resourceName = resourceName.substring(indexOf + 1);
                            }
                            id = childAt.getId();
                        } catch (Resources.NotFoundException unused) {
                        }
                        if (id != 0) {
                            View view = (View) this.f5295b.get(id);
                            if (view == null && (view = findViewById(id)) != null && view != this && view.getParent() == this) {
                                onViewAdded(view);
                            }
                            if (view != this) {
                                eVar = view == null ? null : ((e) view.getLayoutParams()).f5388p0;
                                eVar.setDebugName(resourceName);
                            }
                        }
                        eVar = fVar;
                        eVar.setDebugName(resourceName);
                    }
                }
                if (this.f5306u != -1) {
                    for (int i13 = 0; i13 < childCount3; i13++) {
                        getChildAt(i13).getId();
                    }
                }
                l lVar = this.f5304s;
                if (lVar != null) {
                    lVar.a(this);
                }
                fVar.removeAllChildren();
                ArrayList arrayList = this.f5296e;
                int size = arrayList.size();
                if (size > 0) {
                    for (int i14 = 0; i14 < size; i14++) {
                        ((c) arrayList.get(i14)).updatePreLayout(this);
                    }
                }
                for (int i15 = 0; i15 < childCount3; i15++) {
                    getChildAt(i15);
                }
                SparseArray<u.e> sparseArray = this.f5310y;
                sparseArray.clear();
                sparseArray.put(0, fVar);
                sparseArray.put(getId(), fVar);
                for (int i16 = 0; i16 < childCount3; i16++) {
                    View childAt2 = getChildAt(i16);
                    sparseArray.put(childAt2.getId(), getViewWidget(childAt2));
                }
                for (int i17 = 0; i17 < childCount3; i17++) {
                    View childAt3 = getChildAt(i17);
                    u.e viewWidget2 = getViewWidget(childAt3);
                    if (viewWidget2 != null) {
                        e eVar2 = (e) childAt3.getLayoutParams();
                        fVar.add(viewWidget2);
                        applyConstraintsFromLayoutParams(isInEditMode, childAt3, viewWidget2, eVar2, sparseArray);
                    }
                }
            }
            if (z6) {
                fVar.updateHierarchy();
            }
        }
        resolveSystem(fVar, this.f5303r, i2, i7);
        resolveMeasuredDimension(i2, i7, fVar.getWidth(), fVar.getHeight(), fVar.isWidthMeasuredTooSmall(), fVar.isHeightMeasuredTooSmall());
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        u.e viewWidget = getViewWidget(view);
        if ((view instanceof Guideline) && !(viewWidget instanceof u.i)) {
            e eVar = (e) view.getLayoutParams();
            u.i iVar = new u.i();
            eVar.f5388p0 = iVar;
            eVar.f5364d0 = true;
            iVar.setOrientation(eVar.f5352V);
        }
        if (view instanceof c) {
            c cVar = (c) view;
            cVar.validateParams();
            ((e) view.getLayoutParams()).f5366e0 = true;
            ArrayList arrayList = this.f5296e;
            if (!arrayList.contains(cVar)) {
                arrayList.add(cVar);
            }
        }
        this.f5295b.put(view.getId(), view);
        this.f5302q = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.f5295b.remove(view.getId());
        this.f5297f.remove(getViewWidget(view));
        this.f5296e.remove(view);
        this.f5302q = true;
    }

    public void parseLayoutDescription(int i2) {
        int eventType;
        f fVar;
        Context context = getContext();
        x.b bVar = new x.b();
        bVar.f20702a = new SparseArray();
        bVar.f20703b = new SparseArray();
        XmlResourceParser xml = context.getResources().getXml(i2);
        try {
            eventType = xml.getEventType();
            fVar = null;
        } catch (IOException e3) {
            e3.printStackTrace();
        } catch (XmlPullParserException e7) {
            e7.printStackTrace();
        }
        while (true) {
            char c7 = 1;
            if (eventType == 1) {
                this.f5305t = bVar;
                return;
            }
            if (eventType == 0) {
                xml.getName();
            } else if (eventType == 2) {
                String name = xml.getName();
                switch (name.hashCode()) {
                    case -1349929691:
                        if (name.equals("ConstraintSet")) {
                            c7 = 4;
                            break;
                        }
                        c7 = 65535;
                        break;
                    case 80204913:
                        if (name.equals("State")) {
                            c7 = 2;
                            break;
                        }
                        c7 = 65535;
                        break;
                    case 1382829617:
                        if (name.equals("StateSet")) {
                            break;
                        }
                        c7 = 65535;
                        break;
                    case 1657696882:
                        if (name.equals("layoutDescription")) {
                            c7 = 0;
                            break;
                        }
                        c7 = 65535;
                        break;
                    case 1901439077:
                        if (name.equals("Variant")) {
                            c7 = 3;
                            break;
                        }
                        c7 = 65535;
                        break;
                    default:
                        c7 = 65535;
                        break;
                }
                if (c7 == 2) {
                    fVar = new f(context, xml);
                    bVar.f20702a.put(fVar.f5399a, fVar);
                } else if (c7 == 3) {
                    g gVar = new g(context, xml);
                    if (fVar != null) {
                        fVar.f5400b.add(gVar);
                    }
                } else if (c7 == 4) {
                    bVar.a(context, xml);
                }
            }
            eventType = xml.next();
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.f5302q = true;
        this.f5308w = -1;
        this.f5309x = -1;
        super.requestLayout();
    }

    public void resolveMeasuredDimension(int i2, int i7, int i8, int i9, boolean z6, boolean z7) {
        C1795a c1795a = this.f5311z;
        int i10 = c1795a.f20698e;
        int resolveSizeAndState = View.resolveSizeAndState(i8 + c1795a.f20697d, i2, 0);
        int resolveSizeAndState2 = View.resolveSizeAndState(i9 + i10, i7, 0) & 16777215;
        int min = Math.min(this.f5300n, resolveSizeAndState & 16777215);
        int min2 = Math.min(this.f5301p, resolveSizeAndState2);
        if (z6) {
            min |= Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
        }
        if (z7) {
            min2 |= Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
        }
        setMeasuredDimension(min, min2);
        this.f5308w = min;
        this.f5309x = min2;
    }

    public void resolveSystem(u.f fVar, int i2, int i7, int i8) {
        int i9;
        int mode = View.MeasureSpec.getMode(i7);
        int size = View.MeasureSpec.getSize(i7);
        int mode2 = View.MeasureSpec.getMode(i8);
        int size2 = View.MeasureSpec.getSize(i8);
        int max = Math.max(0, getPaddingTop());
        int max2 = Math.max(0, getPaddingBottom());
        int i10 = max + max2;
        int paddingWidth = getPaddingWidth();
        this.f5311z.captureLayoutInfo(i7, i8, max, max2, paddingWidth, i10);
        int max3 = Math.max(0, getPaddingStart());
        int max4 = Math.max(0, getPaddingEnd());
        if (max3 <= 0 && max4 <= 0) {
            max3 = Math.max(0, getPaddingLeft());
        } else if (isRtl()) {
            i9 = max4;
            int i11 = size - paddingWidth;
            int i12 = size2 - i10;
            setSelfDimensionBehaviour(fVar, mode, i11, mode2, i12);
            fVar.measure(i2, mode, i11, mode2, i12, this.f5308w, this.f5309x, i9, max);
        }
        i9 = max3;
        int i112 = size - paddingWidth;
        int i122 = size2 - i10;
        setSelfDimensionBehaviour(fVar, mode, i112, mode2, i122);
        fVar.measure(i2, mode, i112, mode2, i122, this.f5308w, this.f5309x, i9, max);
    }

    public void setConstraintSet(l lVar) {
        this.f5304s = lVar;
    }

    public void setDesignInformation(int i2, Object obj, Object obj2) {
        if (i2 == 0 && (obj instanceof String) && (obj2 instanceof Integer)) {
            if (this.f5307v == null) {
                this.f5307v = new HashMap();
            }
            String str = (String) obj;
            int indexOf = str.indexOf(RemoteSettings.FORWARD_SLASH_STRING);
            if (indexOf != -1) {
                str = str.substring(indexOf + 1);
            }
            Integer num = (Integer) obj2;
            num.intValue();
            this.f5307v.put(str, num);
        }
    }

    @Override // android.view.View
    public void setId(int i2) {
        int id = getId();
        SparseArray sparseArray = this.f5295b;
        sparseArray.remove(id);
        super.setId(i2);
        sparseArray.put(getId(), this);
    }

    public void setMaxHeight(int i2) {
        if (i2 == this.f5301p) {
            return;
        }
        this.f5301p = i2;
        requestLayout();
    }

    public void setMaxWidth(int i2) {
        if (i2 == this.f5300n) {
            return;
        }
        this.f5300n = i2;
        requestLayout();
    }

    public void setMinHeight(int i2) {
        if (i2 == this.f5299m) {
            return;
        }
        this.f5299m = i2;
        requestLayout();
    }

    public void setMinWidth(int i2) {
        if (i2 == this.f5298j) {
            return;
        }
        this.f5298j = i2;
        requestLayout();
    }

    public void setOnConstraintsChanged(x.e eVar) {
        x.b bVar = this.f5305t;
        if (bVar != null) {
            bVar.setOnConstraintsChanged(eVar);
        }
    }

    public void setOptimizationLevel(int i2) {
        this.f5303r = i2;
        this.f5297f.setOptimizationLevel(i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setSelfDimensionBehaviour(u.f r9, int r10, int r11, int r12, int r13) {
        /*
            r8 = this;
            x.a r0 = r8.f5311z
            int r1 = r0.f20698e
            int r0 = r0.f20697d
            androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour r2 = androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour.f5239b
            int r3 = r8.getChildCount()
            r4 = 1073741824(0x40000000, float:2.0)
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour r6 = androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour.f5240e
            r7 = 0
            if (r10 == r5) goto L31
            if (r10 == 0) goto L25
            if (r10 == r4) goto L1c
            r10 = r2
        L1a:
            r11 = r7
            goto L3a
        L1c:
            int r10 = r8.f5300n
            int r10 = r10 - r0
            int r11 = java.lang.Math.min(r10, r11)
            r10 = r2
            goto L3a
        L25:
            if (r3 != 0) goto L2f
            int r10 = r8.f5298j
            int r11 = java.lang.Math.max(r7, r10)
        L2d:
            r10 = r6
            goto L3a
        L2f:
            r10 = r6
            goto L1a
        L31:
            if (r3 != 0) goto L2d
            int r10 = r8.f5298j
            int r11 = java.lang.Math.max(r7, r10)
            goto L2d
        L3a:
            if (r12 == r5) goto L56
            if (r12 == 0) goto L4a
            if (r12 == r4) goto L42
        L40:
            r13 = r7
            goto L5f
        L42:
            int r12 = r8.f5301p
            int r12 = r12 - r1
            int r13 = java.lang.Math.min(r12, r13)
            goto L5f
        L4a:
            if (r3 != 0) goto L54
            int r12 = r8.f5299m
            int r13 = java.lang.Math.max(r7, r12)
        L52:
            r2 = r6
            goto L5f
        L54:
            r2 = r6
            goto L40
        L56:
            if (r3 != 0) goto L52
            int r12 = r8.f5299m
            int r13 = java.lang.Math.max(r7, r12)
            goto L52
        L5f:
            int r12 = r9.getWidth()
            if (r11 != r12) goto L6b
            int r12 = r9.getHeight()
            if (r13 == r12) goto L6e
        L6b:
            r9.invalidateMeasures()
        L6e:
            r9.setX(r7)
            r9.setY(r7)
            int r12 = r8.f5300n
            int r12 = r12 - r0
            r9.setMaxWidth(r12)
            int r12 = r8.f5301p
            int r12 = r12 - r1
            r9.setMaxHeight(r12)
            r9.setMinWidth(r7)
            r9.setMinHeight(r7)
            r9.setHorizontalDimensionBehaviour(r10)
            r9.setWidth(r11)
            r9.setVerticalDimensionBehaviour(r2)
            r9.setHeight(r13)
            int r10 = r8.f5298j
            int r10 = r10 - r0
            r9.setMinWidth(r10)
            int r10 = r8.f5299m
            int r10 = r10 - r1
            r9.setMinHeight(r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.setSelfDimensionBehaviour(u.f, int, int, int, int):void");
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public e generateDefaultLayoutParams() {
        return new e(-2, -2);
    }

    @Override // android.view.ViewGroup
    public e generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new e(layoutParams);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f5295b = new SparseArray();
        this.f5296e = new ArrayList(4);
        this.f5297f = new u.f();
        this.f5298j = 0;
        this.f5299m = 0;
        this.f5300n = Log.LOG_LEVEL_OFF;
        this.f5301p = Log.LOG_LEVEL_OFF;
        this.f5302q = true;
        this.f5303r = 257;
        this.f5304s = null;
        this.f5305t = null;
        this.f5306u = -1;
        this.f5307v = new HashMap();
        this.f5308w = -1;
        this.f5309x = -1;
        this.f5310y = new SparseArray();
        this.f5311z = new C1795a(this, this);
        this.f5293A = 0;
        this.f5294B = 0;
        a(attributeSet, i2);
    }
}
