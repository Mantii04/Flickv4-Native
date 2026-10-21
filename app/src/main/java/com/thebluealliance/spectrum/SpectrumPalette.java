package com.thebluealliance.spectrum;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.Iterator;
import n4.e;
import o4.C1468e;
import o4.ViewOnClickListenerC1466c;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;

/* loaded from: classes2.dex */
public class SpectrumPalette extends LinearLayout {

    /* renamed from: A, reason: collision with root package name */
    public final ArrayList f13441A;

    /* renamed from: b, reason: collision with root package name */
    public final int f13442b;

    /* renamed from: e, reason: collision with root package name */
    public final int f13443e;

    /* renamed from: f, reason: collision with root package name */
    public int[] f13444f;

    /* renamed from: j, reason: collision with root package name */
    public int f13445j;

    /* renamed from: m, reason: collision with root package name */
    public e f13446m;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f13447n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f13448p;

    /* renamed from: q, reason: collision with root package name */
    public int f13449q;

    /* renamed from: r, reason: collision with root package name */
    public int f13450r;

    /* renamed from: s, reason: collision with root package name */
    public int f13451s;

    /* renamed from: t, reason: collision with root package name */
    public int f13452t;

    /* renamed from: u, reason: collision with root package name */
    public int f13453u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f13454v;

    /* renamed from: w, reason: collision with root package name */
    public int f13455w;

    /* renamed from: x, reason: collision with root package name */
    public int f13456x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f13457y;

    /* renamed from: z, reason: collision with root package name */
    public final EventBus f13458z;

    public SpectrumPalette(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f13447n = false;
        this.f13448p = false;
        this.f13449q = -1;
        this.f13450r = 0;
        this.f13451s = 0;
        this.f13452t = 0;
        this.f13453u = 0;
        this.f13454v = false;
        this.f13455w = 2;
        this.f13456x = -1;
        this.f13457y = false;
        this.f13441A = new ArrayList();
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, R.styleable.SpectrumPalette, 0, 0);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.SpectrumPalette_spectrum_colors, 0);
        if (resourceId != 0) {
            this.f13444f = getContext().getResources().getIntArray(resourceId);
        }
        this.f13447n = obtainStyledAttributes.getBoolean(R.styleable.SpectrumPalette_spectrum_autoPadding, false);
        this.f13450r = obtainStyledAttributes.getDimensionPixelSize(R.styleable.SpectrumPalette_spectrum_outlineWidth, 0);
        int i2 = obtainStyledAttributes.getInt(R.styleable.SpectrumPalette_spectrum_columnCount, -1);
        this.f13449q = i2;
        if (i2 != -1) {
            this.f13448p = true;
        }
        obtainStyledAttributes.recycle();
        this.f13452t = getPaddingTop();
        this.f13453u = getPaddingBottom();
        EventBus eventBus = new EventBus();
        this.f13458z = eventBus;
        eventBus.register(this);
        this.f13442b = getResources().getDimensionPixelSize(R.dimen.color_item_small);
        this.f13443e = getResources().getDimensionPixelSize(R.dimen.color_item_margins_small);
        setOrientation(1);
    }

    private int getOriginalPaddingBottom() {
        return this.f13453u;
    }

    private int getOriginalPaddingTop() {
        return this.f13452t;
    }

    public final int a(int i2) {
        int[] iArr = this.f13444f;
        if (iArr == null) {
            return 0;
        }
        int length = iArr.length / i2;
        if (iArr.length % i2 != 0) {
            length++;
        }
        return ((this.f13443e * 2) + this.f13442b) * length;
    }

    public void createPaletteView() {
        if (this.f13457y && this.f13455w == this.f13456x) {
            return;
        }
        this.f13457y = true;
        this.f13456x = this.f13455w;
        removeAllViews();
        if (this.f13444f == null) {
            return;
        }
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        linearLayout.setGravity(1);
        int i2 = 0;
        int i7 = 0;
        while (true) {
            int[] iArr = this.f13444f;
            if (i2 >= iArr.length) {
                break;
            }
            int i8 = iArr[i2];
            ViewOnClickListenerC1466c viewOnClickListenerC1466c = new ViewOnClickListenerC1466c(getContext(), i8, i8 == this.f13445j, this.f13458z);
            int i9 = this.f13442b;
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i9, i9);
            int i10 = this.f13443e;
            layoutParams.setMargins(i10, i10, i10, i10);
            viewOnClickListenerC1466c.setLayoutParams(layoutParams);
            int i11 = this.f13450r;
            if (i11 != 0) {
                viewOnClickListenerC1466c.setOutlineWidth(i11);
            }
            this.f13441A.add(viewOnClickListenerC1466c);
            linearLayout.addView(viewOnClickListenerC1466c);
            i7++;
            if (i7 == this.f13455w) {
                addView(linearLayout);
                linearLayout = new LinearLayout(getContext());
                linearLayout.setOrientation(0);
                linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                linearLayout.setGravity(1);
                i7 = 0;
            }
            i2++;
        }
        if (i7 > 0) {
            while (i7 < this.f13455w) {
                ImageView imageView = new ImageView(getContext());
                int i12 = this.f13442b;
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(i12, i12);
                int i13 = this.f13443e;
                layoutParams2.setMargins(i13, i13, i13, i13);
                imageView.setLayoutParams(layoutParams2);
                linearLayout.addView(imageView);
                i7++;
            }
            addView(linearLayout);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i2, int i7) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i7);
        int size2 = View.MeasureSpec.getSize(i7);
        if (this.f13448p) {
            size = getPaddingLeft() + (((this.f13443e * 2) + this.f13442b) * this.f13449q) + getPaddingRight();
            this.f13455w = this.f13449q;
        } else {
            int i8 = 0;
            if (mode == 1073741824) {
                while (true) {
                    int i9 = i8 + 1;
                    if ((i9 * 2 * this.f13443e) + (this.f13442b * i9) > size - (getPaddingRight() + getPaddingLeft())) {
                        break;
                    } else {
                        i8 = i9;
                    }
                }
                this.f13455w = i8;
            } else if (mode == Integer.MIN_VALUE) {
                while (true) {
                    int i10 = i8 + 1;
                    if ((i10 * 2 * this.f13443e) + (this.f13442b * i10) > size - (getPaddingRight() + getPaddingLeft())) {
                        break;
                    } else {
                        i8 = i10;
                    }
                }
                this.f13455w = i8;
            } else {
                int paddingRight = getPaddingRight() + getPaddingLeft() + (((this.f13443e * 2) + this.f13442b) * 4);
                this.f13455w = 4;
                size = paddingRight;
            }
        }
        this.f13451s = (size - (getPaddingRight() + (getPaddingLeft() + (((this.f13443e * 2) + this.f13442b) * this.f13455w)))) / 2;
        boolean z6 = this.f13447n;
        if (mode2 != 1073741824) {
            if (mode2 == Integer.MIN_VALUE) {
                int a7 = a(this.f13455w) + this.f13452t + this.f13453u;
                if (z6) {
                    a7 += this.f13451s * 2;
                }
                size2 = Math.min(a7, size2);
            } else {
                size2 = a(this.f13455w) + this.f13452t + this.f13453u;
                if (z6) {
                    size2 += this.f13451s * 2;
                }
            }
        }
        if (z6) {
            int paddingLeft = getPaddingLeft();
            int i11 = this.f13452t + this.f13451s;
            int paddingRight2 = getPaddingRight();
            int i12 = this.f13453u + this.f13451s;
            this.f13454v = true;
            setPadding(paddingLeft, i11, paddingRight2, i12);
        }
        createPaletteView();
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    @Subscribe
    public void onSelectedColorChanged(C1468e c1468e) {
        int selectedColor = c1468e.getSelectedColor();
        this.f13445j = selectedColor;
        e eVar = this.f13446m;
        if (eVar != null) {
            eVar.onColorSelected(selectedColor);
        }
    }

    public void setColors(int[] iArr) {
        this.f13444f = iArr;
        this.f13457y = false;
        createPaletteView();
    }

    public void setFixedColumnCount(int i2) {
        if (i2 <= 0) {
            this.f13448p = false;
            this.f13449q = -1;
            requestLayout();
            invalidate();
            return;
        }
        Log.d("spectrum", "set column count to " + i2);
        this.f13448p = true;
        this.f13449q = i2;
        requestLayout();
        invalidate();
    }

    public void setOnColorSelectedListener(e eVar) {
        this.f13446m = eVar;
    }

    public void setOutlineWidth(int i2) {
        this.f13450r = i2;
        Iterator it = this.f13441A.iterator();
        while (it.hasNext()) {
            ((ViewOnClickListenerC1466c) it.next()).setOutlineWidth(i2);
        }
    }

    @Override // android.view.View
    public void setPadding(int i2, int i7, int i8, int i9) {
        super.setPadding(i2, i7, i8, i9);
        if (this.f13454v) {
            return;
        }
        this.f13452t = i7;
        this.f13453u = i9;
    }

    public void setSelectedColor(int i2) {
        this.f13445j = i2;
        this.f13458z.post(new C1468e(i2));
    }
}
