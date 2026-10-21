package com.skydoves.powerspinner;

import E.c;
import H5.p;
import H5.r;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.lifecycle.AbstractC0557o;
import androidx.lifecycle.G;
import androidx.lifecycle.InterfaceC0560s;
import androidx.lifecycle.InterfaceC0561t;
import androidx.lifecycle.Lifecycle$Event;
import androidx.recyclerview.widget.RecyclerView;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import k4.AbstractC1099a;
import k4.AbstractC1117s;
import k4.C1102d;
import k4.C1107i;
import k4.C1108j;
import k4.C1110l;
import k4.C1111m;
import k4.C1112n;
import k4.C1113o;
import k4.InterfaceC1103e;
import k4.InterfaceC1104f;
import k4.InterfaceC1105g;
import k4.InterfaceC1106h;
import k4.RunnableC1116r;
import k4.ViewOnClickListenerC1109k;
import kotlin.jvm.internal.j;
import l4.C1229b;
import m1.V;
import u5.C1711j;
import v5.n;

/* loaded from: classes2.dex */
public final class PowerSpinnerView extends AppCompatTextView implements InterfaceC0560s {

    /* renamed from: A, reason: collision with root package name */
    public long f13350A;

    /* renamed from: B, reason: collision with root package name */
    public int f13351B;

    /* renamed from: C, reason: collision with root package name */
    public boolean f13352C;

    /* renamed from: D, reason: collision with root package name */
    public SpinnerGravity f13353D;

    /* renamed from: E, reason: collision with root package name */
    public int f13354E;

    /* renamed from: F, reason: collision with root package name */
    public int f13355F;

    /* renamed from: G, reason: collision with root package name */
    public boolean f13356G;

    /* renamed from: H, reason: collision with root package name */
    public int f13357H;

    /* renamed from: I, reason: collision with root package name */
    public int f13358I;

    /* renamed from: J, reason: collision with root package name */
    public int f13359J;

    /* renamed from: K, reason: collision with root package name */
    public int f13360K;

    /* renamed from: L, reason: collision with root package name */
    public int f13361L;

    /* renamed from: M, reason: collision with root package name */
    public int f13362M;

    /* renamed from: N, reason: collision with root package name */
    public int f13363N;

    /* renamed from: O, reason: collision with root package name */
    public boolean f13364O;

    /* renamed from: P, reason: collision with root package name */
    public InterfaceC1105g f13365P;

    /* renamed from: Q, reason: collision with root package name */
    public InterfaceC1103e f13366Q;

    /* renamed from: R, reason: collision with root package name */
    public SpinnerAnimation f13367R;

    /* renamed from: S, reason: collision with root package name */
    public String f13368S;

    /* renamed from: T, reason: collision with root package name */
    public InterfaceC0561t f13369T;

    /* renamed from: q, reason: collision with root package name */
    public final C1229b f13370q;

    /* renamed from: r, reason: collision with root package name */
    public final PopupWindow f13371r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f13372s;

    /* renamed from: t, reason: collision with root package name */
    public int f13373t;

    /* renamed from: u, reason: collision with root package name */
    public InterfaceC1106h f13374u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f13375v;

    /* renamed from: w, reason: collision with root package name */
    public long f13376w;

    /* renamed from: x, reason: collision with root package name */
    public Drawable f13377x;

    /* renamed from: y, reason: collision with root package name */
    public long f13378y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f13379z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PowerSpinnerView(Context context) {
        super(context);
        j.checkNotNullParameter(context, "context");
        C1229b inflate = C1229b.inflate(LayoutInflater.from(getContext()), null, false);
        j.checkNotNullExpressionValue(inflate, "LayoutBodyPowerSpinnerLi…om(context), null, false)");
        this.f13370q = inflate;
        this.f13373t = -1;
        this.f13374u = new C1102d(this);
        this.f13375v = true;
        this.f13376w = 250L;
        Context context2 = getContext();
        j.checkNotNullExpressionValue(context2, "context");
        Drawable contextDrawable = AbstractC1099a.contextDrawable(context2, R.drawable.arrow_power_spinner_library);
        this.f13377x = contextDrawable != null ? contextDrawable.mutate() : null;
        this.f13378y = 150L;
        this.f13351B = Integer.MIN_VALUE;
        this.f13352C = true;
        this.f13353D = SpinnerGravity.END;
        this.f13355F = -1;
        this.f13357H = AbstractC1099a.dp2Px((View) this, 0.5f);
        this.f13358I = -1;
        this.f13359J = 65555;
        this.f13360K = AbstractC1099a.dp2Px((View) this, 4);
        this.f13361L = Integer.MIN_VALUE;
        this.f13362M = Integer.MIN_VALUE;
        this.f13363N = Integer.MIN_VALUE;
        this.f13364O = true;
        this.f13367R = SpinnerAnimation.NORMAL;
        if (this.f13374u instanceof V) {
            RecyclerView spinnerRecyclerView = getSpinnerRecyclerView();
            Object obj = this.f13374u;
            if (obj == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.Adapter<*>");
            }
            spinnerRecyclerView.setAdapter((V) obj);
        }
        this.f13371r = new PopupWindow(inflate.f18152a, -1, -2);
        setOnClickListener(new ViewOnClickListenerC1109k(this));
        if (getGravity() == 0) {
            setGravity(16);
        }
        Object context3 = getContext();
        if (this.f13369T == null && (context3 instanceof InterfaceC0561t)) {
            setLifecycleOwner((InterfaceC0561t) context3);
        }
    }

    public static final void access$animateArrow(PowerSpinnerView powerSpinnerView, boolean z6) {
        if (powerSpinnerView.f13375v) {
            ObjectAnimator ofInt = ObjectAnimator.ofInt(powerSpinnerView.f13377x, FirebaseAnalytics.Param.LEVEL, z6 ? 0 : 10000, z6 ? 10000 : 0);
            ofInt.setDuration(powerSpinnerView.f13376w);
            ofInt.start();
        }
    }

    public static final void access$applyWindowAnimation(PowerSpinnerView powerSpinnerView) {
        int i2 = powerSpinnerView.f13361L;
        PopupWindow popupWindow = powerSpinnerView.f13371r;
        if (i2 != Integer.MIN_VALUE) {
            popupWindow.setAnimationStyle(i2);
            return;
        }
        int ordinal = powerSpinnerView.f13367R.ordinal();
        if (ordinal == 0) {
            popupWindow.setAnimationStyle(R.style.DropDown_PowerSpinner);
        } else if (ordinal == 1) {
            popupWindow.setAnimationStyle(R.style.Fade_PowerSpinner);
        } else {
            if (ordinal != 2) {
                return;
            }
            popupWindow.setAnimationStyle(R.style.Elastic_PowerSpinner);
        }
    }

    private final void setTypeArray(TypedArray typedArray) {
        int resourceId;
        if (typedArray.hasValue(R.styleable.PowerSpinnerView_spinner_arrow_drawable)) {
            this.f13351B = typedArray.getResourceId(R.styleable.PowerSpinnerView_spinner_arrow_drawable, this.f13351B);
        }
        if (typedArray.hasValue(R.styleable.PowerSpinnerView_spinner_arrow_show)) {
            this.f13352C = typedArray.getBoolean(R.styleable.PowerSpinnerView_spinner_arrow_show, this.f13352C);
        }
        if (typedArray.hasValue(R.styleable.PowerSpinnerView_spinner_arrow_gravity)) {
            int integer = typedArray.getInteger(R.styleable.PowerSpinnerView_spinner_arrow_gravity, this.f13353D.getValue());
            SpinnerGravity spinnerGravity = SpinnerGravity.START;
            if (integer != spinnerGravity.getValue()) {
                spinnerGravity = SpinnerGravity.TOP;
                if (integer != spinnerGravity.getValue()) {
                    spinnerGravity = SpinnerGravity.END;
                    if (integer != spinnerGravity.getValue()) {
                        spinnerGravity = SpinnerGravity.BOTTOM;
                        if (integer != spinnerGravity.getValue()) {
                            throw new IllegalArgumentException("unknown argument: spinner_arrow_gravity");
                        }
                    }
                }
            }
            this.f13353D = spinnerGravity;
        }
        if (typedArray.hasValue(R.styleable.PowerSpinnerView_spinner_arrow_padding)) {
            this.f13354E = typedArray.getDimensionPixelSize(R.styleable.PowerSpinnerView_spinner_arrow_padding, this.f13354E);
        }
        if (typedArray.hasValue(R.styleable.PowerSpinnerView_spinner_arrow_tint)) {
            this.f13355F = typedArray.getColor(R.styleable.PowerSpinnerView_spinner_arrow_tint, this.f13355F);
        }
        if (typedArray.hasValue(R.styleable.PowerSpinnerView_spinner_arrow_animate)) {
            this.f13375v = typedArray.getBoolean(R.styleable.PowerSpinnerView_spinner_arrow_animate, this.f13375v);
        }
        if (typedArray.hasValue(R.styleable.PowerSpinnerView_spinner_arrow_animate_duration)) {
            this.f13376w = typedArray.getInteger(R.styleable.PowerSpinnerView_spinner_arrow_animate_duration, (int) this.f13376w);
        }
        if (typedArray.hasValue(R.styleable.PowerSpinnerView_spinner_divider_show)) {
            this.f13356G = typedArray.getBoolean(R.styleable.PowerSpinnerView_spinner_divider_show, this.f13356G);
        }
        if (typedArray.hasValue(R.styleable.PowerSpinnerView_spinner_divider_size)) {
            this.f13357H = typedArray.getDimensionPixelSize(R.styleable.PowerSpinnerView_spinner_divider_size, this.f13357H);
        }
        if (typedArray.hasValue(R.styleable.PowerSpinnerView_spinner_divider_color)) {
            this.f13358I = typedArray.getColor(R.styleable.PowerSpinnerView_spinner_divider_color, this.f13358I);
        }
        if (typedArray.hasValue(R.styleable.PowerSpinnerView_spinner_popup_background)) {
            this.f13359J = typedArray.getColor(R.styleable.PowerSpinnerView_spinner_popup_background, this.f13359J);
        }
        if (typedArray.hasValue(R.styleable.PowerSpinnerView_spinner_popup_animation)) {
            int integer2 = typedArray.getInteger(R.styleable.PowerSpinnerView_spinner_popup_animation, this.f13367R.getValue());
            SpinnerAnimation spinnerAnimation = SpinnerAnimation.DROPDOWN;
            if (integer2 != spinnerAnimation.getValue()) {
                spinnerAnimation = SpinnerAnimation.FADE;
                if (integer2 != spinnerAnimation.getValue()) {
                    spinnerAnimation = SpinnerAnimation.BOUNCE;
                    if (integer2 != spinnerAnimation.getValue()) {
                        spinnerAnimation = SpinnerAnimation.NORMAL;
                        if (integer2 != spinnerAnimation.getValue()) {
                            throw new IllegalArgumentException("unknown argument: spinner_popup_animation");
                        }
                    }
                }
            }
            this.f13367R = spinnerAnimation;
        }
        if (typedArray.hasValue(R.styleable.PowerSpinnerView_spinner_popup_animation_style)) {
            this.f13361L = typedArray.getResourceId(R.styleable.PowerSpinnerView_spinner_popup_animation_style, this.f13361L);
        }
        if (typedArray.hasValue(R.styleable.PowerSpinnerView_spinner_popup_width)) {
            this.f13362M = typedArray.getDimensionPixelSize(R.styleable.PowerSpinnerView_spinner_popup_width, this.f13362M);
        }
        if (typedArray.hasValue(R.styleable.PowerSpinnerView_spinner_popup_height)) {
            this.f13363N = typedArray.getDimensionPixelSize(R.styleable.PowerSpinnerView_spinner_popup_height, this.f13363N);
        }
        if (typedArray.hasValue(R.styleable.PowerSpinnerView_spinner_popup_elevation)) {
            this.f13360K = typedArray.getDimensionPixelSize(R.styleable.PowerSpinnerView_spinner_popup_elevation, this.f13360K);
        }
        if (typedArray.hasValue(R.styleable.PowerSpinnerView_spinner_item_array) && (resourceId = typedArray.getResourceId(R.styleable.PowerSpinnerView_spinner_item_array, Integer.MIN_VALUE)) != Integer.MIN_VALUE) {
            setItems(resourceId);
        }
        if (typedArray.hasValue(R.styleable.PowerSpinnerView_spinner_dismiss_notified_select)) {
            this.f13364O = typedArray.getBoolean(R.styleable.PowerSpinnerView_spinner_dismiss_notified_select, this.f13364O);
        }
        if (typedArray.hasValue(R.styleable.PowerSpinnerView_spinner_debounce_duration)) {
            this.f13378y = typedArray.getInteger(R.styleable.PowerSpinnerView_spinner_debounce_duration, (int) this.f13378y);
        }
        if (typedArray.hasValue(R.styleable.PowerSpinnerView_spinner_preference_name)) {
            setPreferenceName(typedArray.getString(R.styleable.PowerSpinnerView_spinner_preference_name));
        }
        if (typedArray.hasValue(R.styleable.PowerSpinnerView_spinner_popup_focusable)) {
            setIsFocusable(typedArray.getBoolean(R.styleable.PowerSpinnerView_spinner_popup_focusable, false));
        }
    }

    public static /* synthetic */ void showOrDismiss$default(PowerSpinnerView powerSpinnerView, int i2, int i7, int i8, Object obj) {
        if ((i8 & 1) != 0) {
            i2 = 0;
        }
        if ((i8 & 2) != 0) {
            i7 = 0;
        }
        powerSpinnerView.showOrDismiss(i2, i7);
    }

    public final void dismiss() {
        H5.a aVar = new H5.a() { // from class: com.skydoves.powerspinner.PowerSpinnerView$dismiss$1
            {
                super(0);
            }

            @Override // H5.a
            public /* bridge */ /* synthetic */ Object invoke() {
                m81invoke();
                return C1711j.f20329a;
            }

            /* renamed from: invoke, reason: collision with other method in class */
            public final void m81invoke() {
                PopupWindow popupWindow;
                PowerSpinnerView powerSpinnerView = PowerSpinnerView.this;
                if (powerSpinnerView.isShowing()) {
                    PowerSpinnerView.access$animateArrow(powerSpinnerView, false);
                    popupWindow = powerSpinnerView.f13371r;
                    popupWindow.dismiss();
                    powerSpinnerView.f13372s = false;
                }
            }
        };
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f13350A > this.f13378y) {
            this.f13350A = currentTimeMillis;
            aVar.invoke();
        }
    }

    public final boolean getArrowAnimate() {
        return this.f13375v;
    }

    public final long getArrowAnimationDuration() {
        return this.f13376w;
    }

    public final Drawable getArrowDrawable() {
        return this.f13377x;
    }

    public final SpinnerGravity getArrowGravity() {
        return this.f13353D;
    }

    public final int getArrowPadding() {
        return this.f13354E;
    }

    public final int getArrowResource() {
        return this.f13351B;
    }

    public final AbstractC1117s getArrowSize() {
        return null;
    }

    public final int getArrowTint() {
        return this.f13355F;
    }

    public final long getDebounceDuration() {
        return this.f13378y;
    }

    public final boolean getDisableChangeTextWhenNotified() {
        return this.f13379z;
    }

    public final boolean getDismissWhenNotifiedItemSelected() {
        return this.f13364O;
    }

    public final int getDividerColor() {
        return this.f13358I;
    }

    public final int getDividerSize() {
        return this.f13357H;
    }

    public final InterfaceC0561t getLifecycleOwner() {
        return this.f13369T;
    }

    public final InterfaceC1103e getOnSpinnerDismissListener() {
        return this.f13366Q;
    }

    public final String getPreferenceName() {
        return this.f13368S;
    }

    public final int getSelectedIndex() {
        return this.f13373t;
    }

    public final boolean getShowArrow() {
        return this.f13352C;
    }

    public final boolean getShowDivider() {
        return this.f13356G;
    }

    public final <T> InterfaceC1106h getSpinnerAdapter() {
        InterfaceC1106h interfaceC1106h = this.f13374u;
        if (interfaceC1106h != null) {
            return interfaceC1106h;
        }
        throw new NullPointerException("null cannot be cast to non-null type com.skydoves.powerspinner.PowerSpinnerInterface<T>");
    }

    public final FrameLayout getSpinnerBodyView() {
        FrameLayout frameLayout = this.f13370q.f18152a;
        j.checkNotNullExpressionValue(frameLayout, "binding.body");
        return frameLayout;
    }

    public final InterfaceC1105g getSpinnerOutsideTouchListener() {
        return this.f13365P;
    }

    public final SpinnerAnimation getSpinnerPopupAnimation() {
        return this.f13367R;
    }

    public final int getSpinnerPopupAnimationStyle() {
        return this.f13361L;
    }

    public final int getSpinnerPopupBackgroundColor() {
        return this.f13359J;
    }

    public final int getSpinnerPopupElevation() {
        return this.f13360K;
    }

    public final int getSpinnerPopupHeight() {
        return this.f13363N;
    }

    public final int getSpinnerPopupWidth() {
        return this.f13362M;
    }

    public final RecyclerView getSpinnerRecyclerView() {
        RecyclerView recyclerView = this.f13370q.f18153b;
        j.checkNotNullExpressionValue(recyclerView, "binding.recyclerView");
        return recyclerView;
    }

    public final boolean isShowing() {
        return this.f13372s;
    }

    public final void n() {
        if (getArrowResource() != Integer.MIN_VALUE) {
            Context context = getContext();
            j.checkNotNullExpressionValue(context, "context");
            Drawable contextDrawable = AbstractC1099a.contextDrawable(context, getArrowResource());
            this.f13377x = contextDrawable != null ? contextDrawable.mutate() : null;
        }
        setCompoundDrawablePadding(getArrowPadding());
        getArrowSize();
        Drawable drawable = this.f13377x;
        if (!getShowArrow()) {
            setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
            return;
        }
        if (drawable != null) {
            Drawable mutate = c.wrap(drawable).mutate();
            j.checkNotNullExpressionValue(mutate, "DrawableCompat.wrap(it).mutate()");
            c.setTint(mutate, getArrowTint());
            mutate.invalidateSelf();
        }
        int ordinal = getArrowGravity().ordinal();
        if (ordinal == 0) {
            setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
            return;
        }
        if (ordinal == 1) {
            setCompoundDrawablesWithIntrinsicBounds((Drawable) null, drawable, (Drawable) null, (Drawable) null);
        } else if (ordinal == 2) {
            setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, drawable, (Drawable) null);
        } else {
            if (ordinal != 3) {
                return;
            }
            setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, drawable);
        }
    }

    public final void notifyItemSelected(int i2, CharSequence changedText) {
        j.checkNotNullParameter(changedText, "changedText");
        this.f13373t = i2;
        if (!this.f13379z) {
            setText(changedText);
        }
        if (this.f13364O) {
            dismiss();
        }
        String str = this.f13368S;
        if (str == null || str.length() == 0) {
            return;
        }
        C1107i c1107i = C1108j.f17307c;
        Context context = getContext();
        j.checkNotNullExpressionValue(context, "context");
        c1107i.getInstance(context).persistSelectedIndex(str, this.f13373t);
    }

    public final void o() {
        String str;
        if (((C1102d) this.f13374u).getItemCount() <= 0 || (str = this.f13368S) == null || str.length() == 0) {
            return;
        }
        C1107i c1107i = C1108j.f17307c;
        Context context = getContext();
        j.checkNotNullExpressionValue(context, "context");
        if (c1107i.getInstance(context).getSelectedIndex(str) != -1) {
            InterfaceC1106h interfaceC1106h = this.f13374u;
            Context context2 = getContext();
            j.checkNotNullExpressionValue(context2, "context");
            ((C1102d) interfaceC1106h).notifyItemSelected(c1107i.getInstance(context2).getSelectedIndex(str));
        }
    }

    @G(Lifecycle$Event.ON_DESTROY)
    public final void onDestroy() {
        dismiss();
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        p();
        n();
        o();
    }

    public final void p() {
        post(new RunnableC1116r(this));
    }

    public final void setArrowAnimate(boolean z6) {
        this.f13375v = z6;
    }

    public final void setArrowAnimationDuration(long j7) {
        this.f13376w = j7;
    }

    public final void setArrowDrawable(Drawable drawable) {
        this.f13377x = drawable;
    }

    public final void setArrowGravity(SpinnerGravity value) {
        j.checkNotNullParameter(value, "value");
        this.f13353D = value;
        n();
    }

    public final void setArrowPadding(int i2) {
        this.f13354E = i2;
        n();
    }

    public final void setArrowResource(int i2) {
        this.f13351B = i2;
        n();
    }

    public final void setArrowSize(AbstractC1117s abstractC1117s) {
        n();
    }

    public final void setArrowTint(int i2) {
        this.f13355F = i2;
        n();
    }

    public final void setDisableChangeTextWhenNotified(boolean z6) {
        this.f13379z = z6;
    }

    public final void setDismissWhenNotifiedItemSelected(boolean z6) {
        this.f13364O = z6;
    }

    public final void setDividerColor(int i2) {
        this.f13358I = i2;
        p();
    }

    public final void setDividerSize(int i2) {
        this.f13357H = i2;
        p();
    }

    public final void setIsFocusable(boolean z6) {
        this.f13371r.setFocusable(z6);
        this.f13366Q = new C1110l(this);
    }

    public final <T> void setItems(List<? extends T> itemList) {
        j.checkNotNullParameter(itemList, "itemList");
        InterfaceC1106h interfaceC1106h = this.f13374u;
        if (interfaceC1106h == null) {
            throw new NullPointerException("null cannot be cast to non-null type com.skydoves.powerspinner.PowerSpinnerInterface<T>");
        }
        ((C1102d) interfaceC1106h).setItems(itemList);
    }

    public final void setLifecycleOwner(InterfaceC0561t interfaceC0561t) {
        AbstractC0557o lifecycle;
        this.f13369T = interfaceC0561t;
        if (interfaceC0561t == null || (lifecycle = interfaceC0561t.getLifecycle()) == null) {
            return;
        }
        lifecycle.addObserver(this);
    }

    public final void setOnSpinnerDismissListener(InterfaceC1103e interfaceC1103e) {
        this.f13366Q = interfaceC1103e;
    }

    public final <T> void setOnSpinnerItemSelectedListener(InterfaceC1104f onSpinnerItemSelectedListener) {
        j.checkNotNullParameter(onSpinnerItemSelectedListener, "onSpinnerItemSelectedListener");
        InterfaceC1106h interfaceC1106h = this.f13374u;
        if (interfaceC1106h == null) {
            throw new NullPointerException("null cannot be cast to non-null type com.skydoves.powerspinner.PowerSpinnerInterface<T>");
        }
        ((C1102d) interfaceC1106h).setOnSpinnerItemSelectedListener(onSpinnerItemSelectedListener);
    }

    public final /* synthetic */ void setOnSpinnerOutsideTouchListener(p block) {
        j.checkNotNullParameter(block, "block");
        this.f13365P = new C1113o(block);
    }

    public final void setPreferenceName(String str) {
        this.f13368S = str;
        o();
    }

    public final void setShowArrow(boolean z6) {
        this.f13352C = z6;
        n();
    }

    public final void setShowDivider(boolean z6) {
        this.f13356G = z6;
        p();
    }

    public final <T> void setSpinnerAdapter(InterfaceC1106h powerSpinnerInterface) {
        j.checkNotNullParameter(powerSpinnerInterface, "powerSpinnerInterface");
        this.f13374u = powerSpinnerInterface;
        if (powerSpinnerInterface instanceof V) {
            RecyclerView spinnerRecyclerView = getSpinnerRecyclerView();
            Object obj = this.f13374u;
            if (obj == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.Adapter<*>");
            }
            spinnerRecyclerView.setAdapter((V) obj);
        }
    }

    public final void setSpinnerOutsideTouchListener(InterfaceC1105g interfaceC1105g) {
        this.f13365P = interfaceC1105g;
    }

    public final void setSpinnerPopupAnimation(SpinnerAnimation spinnerAnimation) {
        j.checkNotNullParameter(spinnerAnimation, "<set-?>");
        this.f13367R = spinnerAnimation;
    }

    public final void setSpinnerPopupAnimationStyle(int i2) {
        this.f13361L = i2;
    }

    public final void setSpinnerPopupBackgroundColor(int i2) {
        this.f13359J = i2;
        p();
    }

    public final void setSpinnerPopupElevation(int i2) {
        this.f13360K = i2;
        p();
    }

    public final void setSpinnerPopupHeight(int i2) {
        this.f13363N = i2;
    }

    public final void setSpinnerPopupWidth(int i2) {
        this.f13362M = i2;
    }

    public final void show(int i2, int i7) {
        PowerSpinnerView$show$1 powerSpinnerView$show$1 = new PowerSpinnerView$show$1(this, i2, i7);
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f13350A > this.f13378y) {
            this.f13350A = currentTimeMillis;
            powerSpinnerView$show$1.invoke();
        }
    }

    public final void showOrDismiss(int i2, int i7) {
        V adapter = getSpinnerRecyclerView().getAdapter();
        if (adapter != null) {
            j.checkNotNullExpressionValue(adapter, "getSpinnerRecyclerView().adapter ?: return");
            if (this.f13372s || adapter.getItemCount() <= 0) {
                dismiss();
            } else {
                show(i2, i7);
            }
        }
    }

    public final void setItems(int i2) {
        if (this.f13374u instanceof C1102d) {
            Context context = getContext();
            j.checkNotNullExpressionValue(context, "context");
            String[] stringArray = context.getResources().getStringArray(i2);
            j.checkNotNullExpressionValue(stringArray, "context.resources.getStringArray(resource)");
            setItems(n.toList(stringArray));
        }
    }

    public final /* synthetic */ void setOnSpinnerDismissListener(H5.a block) {
        j.checkNotNullParameter(block, "block");
        this.f13366Q = new C1111m(block);
    }

    public final /* synthetic */ <T> void setOnSpinnerItemSelectedListener(r block) {
        j.checkNotNullParameter(block, "block");
        InterfaceC1106h interfaceC1106h = this.f13374u;
        if (interfaceC1106h != null) {
            ((C1102d) interfaceC1106h).setOnSpinnerItemSelectedListener(new C1112n(block));
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type com.skydoves.powerspinner.PowerSpinnerInterface<T>");
    }
}
