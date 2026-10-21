package com.google.android.youtube.player;

import N3.b;
import N3.c;
import N3.d;
import N3.e;
import N3.i;
import O3.AbstractC0203b;
import O3.InterfaceC0205d;
import O3.q;
import O3.z;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.HashSet;

/* loaded from: classes2.dex */
public final class YouTubePlayerView extends ViewGroup implements e {

    /* renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ int f13000u = 0;

    /* renamed from: b, reason: collision with root package name */
    public final i f13001b;

    /* renamed from: e, reason: collision with root package name */
    public final HashSet f13002e;

    /* renamed from: f, reason: collision with root package name */
    public final b f13003f;

    /* renamed from: j, reason: collision with root package name */
    public InterfaceC0205d f13004j;

    /* renamed from: m, reason: collision with root package name */
    public z f13005m;

    /* renamed from: n, reason: collision with root package name */
    public View f13006n;

    /* renamed from: p, reason: collision with root package name */
    public final q f13007p;

    /* renamed from: q, reason: collision with root package name */
    public e f13008q;

    /* renamed from: r, reason: collision with root package name */
    public Bundle f13009r;

    /* renamed from: s, reason: collision with root package name */
    public d f13010s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f13011t;

    public YouTubePlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final void a(View view) {
        if (view != this.f13007p) {
            if (this.f13005m == null || view != this.f13006n) {
                throw new UnsupportedOperationException("No views can be added on top of the player");
            }
        }
    }

    @Override // android.view.View
    public final void addFocusables(ArrayList<View> arrayList, int i2) {
        ArrayList<View> arrayList2 = new ArrayList<>();
        super.addFocusables(arrayList2, i2);
        arrayList.addAll(arrayList2);
        HashSet hashSet = this.f13002e;
        hashSet.clear();
        hashSet.addAll(arrayList2);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        a(view);
        super.addView(view);
    }

    public final void b() {
        z zVar = this.f13005m;
        if (zVar != null) {
            zVar.b();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void clearChildFocus(View view) {
        if (hasFocusable()) {
            requestFocus();
        } else {
            super.clearChildFocus(view);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (this.f13005m != null) {
            if (keyEvent.getAction() == 0) {
                return this.f13005m.a(keyEvent.getKeyCode(), keyEvent) || super.dispatchKeyEvent(keyEvent);
            }
            if (keyEvent.getAction() == 1) {
                return this.f13005m.b(keyEvent.getKeyCode(), keyEvent) || super.dispatchKeyEvent(keyEvent);
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void focusableViewAvailable(View view) {
        super.focusableViewAvailable(view);
        this.f13002e.add(view);
    }

    public final void initialize(String str, d dVar) {
        AbstractC0203b.a(str, (Object) "Developer key cannot be null or empty");
        this.f13003f.a(this, str, dVar);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnGlobalFocusChangeListener(this.f13001b);
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        z zVar = this.f13005m;
        if (zVar != null) {
            zVar.a(configuration);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalFocusChangeListener(this.f13001b);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        if (getChildCount() > 0) {
            getChildAt(0).layout(0, 0, i8 - i2, i9 - i7);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i2, int i7) {
        if (getChildCount() <= 0) {
            setMeasuredDimension(0, 0);
            return;
        }
        View childAt = getChildAt(0);
        childAt.measure(i2, i7);
        setMeasuredDimension(childAt.getMeasuredWidth(), childAt.getMeasuredHeight());
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        this.f13002e.add(view2);
    }

    @Override // android.view.ViewGroup
    public final void setClipToPadding(boolean z6) {
    }

    @Override // android.view.View
    public final void setPadding(int i2, int i7, int i8, int i9) {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public YouTubePlayerView(Context context, AttributeSet attributeSet, int i2) {
        super((Context) AbstractC0203b.a(context, "context cannot be null"), attributeSet, i2);
        if (!(context instanceof c)) {
            throw new IllegalStateException("A YouTubePlayerView can only be created with an Activity  which extends YouTubeBaseActivity as its context.");
        }
        b bVar = ((c) context).f2329b;
        this.f13003f = (b) AbstractC0203b.a(bVar, "listener cannot be null");
        if (getBackground() == null) {
            setBackgroundColor(-16777216);
        }
        setClipToPadding(false);
        q qVar = new q(context);
        this.f13007p = qVar;
        requestTransparentRegion(qVar);
        addView(qVar);
        this.f13002e = new HashSet();
        this.f13001b = new i(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList<View> arrayList, int i2, int i7) {
        ArrayList<View> arrayList2 = new ArrayList<>();
        super.addFocusables(arrayList2, i2, i7);
        arrayList.addAll(arrayList2);
        HashSet hashSet = this.f13002e;
        hashSet.clear();
        hashSet.addAll(arrayList2);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i2) {
        a(view);
        super.addView(view, i2);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i2, int i7) {
        a(view);
        super.addView(view, i2, i7);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        a(view);
        super.addView(view, i2, layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        a(view);
        super.addView(view, layoutParams);
    }
}
