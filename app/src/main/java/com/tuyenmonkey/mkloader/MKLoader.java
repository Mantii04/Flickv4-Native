package com.tuyenmonkey.mkloader;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import p4.InterfaceC1501a;
import r4.g;
import s4.AbstractC1641a;

/* loaded from: classes2.dex */
public class MKLoader extends View implements InterfaceC1501a {

    /* renamed from: b, reason: collision with root package name */
    public final g f13470b;

    public MKLoader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MKLoader);
        String string = obtainStyledAttributes.getString(R.styleable.MKLoader_mk_type);
        g generateLoaderView = AbstractC1641a.generateLoaderView(string == null ? "ClassicSpinner" : string);
        this.f13470b = generateLoaderView;
        generateLoaderView.setColor(obtainStyledAttributes.getColor(R.styleable.MKLoader_mk_color, Color.parseColor("#ffffff")));
        this.f13470b.setInvalidateListener(this);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f13470b.draw(canvas);
    }

    @Override // android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        super.onLayout(z6, i2, i7, i8, i9);
        this.f13470b.setSize(getWidth(), getHeight());
        this.f13470b.initializeObjects();
        this.f13470b.setUpAnimation();
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i7) {
        setMeasuredDimension(View.resolveSize(this.f13470b.getDesiredWidth(), i2), View.resolveSize(this.f13470b.getDesiredHeight(), i7));
    }

    @Override // p4.InterfaceC1501a
    public void reDraw() {
        invalidate();
    }
}
