package com.malinskiy.superrecyclerview;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewStub;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import d4.C0808b;
import d4.C0809c;
import d4.C0810d;
import d4.InterfaceC0807a;
import e4.e;
import e4.g;
import f4.AbstractC0924a;
import m1.AbstractC1276d0;
import m1.AbstractC1286i0;
import m1.AbstractC1294m0;
import m1.V;
import v1.InterfaceC1755n;

/* loaded from: classes2.dex */
public class SuperRecyclerView extends FrameLayout {

    /* renamed from: A, reason: collision with root package name */
    public LAYOUT_MANAGER_TYPE f13317A;

    /* renamed from: B, reason: collision with root package name */
    public AbstractC1294m0 f13318B;

    /* renamed from: C, reason: collision with root package name */
    public AbstractC1294m0 f13319C;

    /* renamed from: D, reason: collision with root package name */
    public InterfaceC0807a f13320D;

    /* renamed from: E, reason: collision with root package name */
    public boolean f13321E;

    /* renamed from: F, reason: collision with root package name */
    public final SwipeRefreshLayout f13322F;

    /* renamed from: G, reason: collision with root package name */
    public int f13323G;

    /* renamed from: H, reason: collision with root package name */
    public int f13324H;

    /* renamed from: I, reason: collision with root package name */
    public int[] f13325I;

    /* renamed from: b, reason: collision with root package name */
    public int f13326b;

    /* renamed from: e, reason: collision with root package name */
    public RecyclerView f13327e;

    /* renamed from: f, reason: collision with root package name */
    public final ViewStub f13328f;

    /* renamed from: j, reason: collision with root package name */
    public final ViewStub f13329j;

    /* renamed from: m, reason: collision with root package name */
    public final ViewStub f13330m;

    /* renamed from: n, reason: collision with root package name */
    public final View f13331n;

    /* renamed from: p, reason: collision with root package name */
    public final View f13332p;

    /* renamed from: q, reason: collision with root package name */
    public final View f13333q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f13334r;

    /* renamed from: s, reason: collision with root package name */
    public int f13335s;

    /* renamed from: t, reason: collision with root package name */
    public int f13336t;

    /* renamed from: u, reason: collision with root package name */
    public int f13337u;

    /* renamed from: v, reason: collision with root package name */
    public int f13338v;

    /* renamed from: w, reason: collision with root package name */
    public int f13339w;

    /* renamed from: x, reason: collision with root package name */
    public int f13340x;

    /* renamed from: y, reason: collision with root package name */
    public int f13341y;

    /* renamed from: z, reason: collision with root package name */
    public int f13342z;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class LAYOUT_MANAGER_TYPE {

        /* renamed from: b, reason: collision with root package name */
        public static final LAYOUT_MANAGER_TYPE f13343b;

        /* renamed from: e, reason: collision with root package name */
        public static final LAYOUT_MANAGER_TYPE f13344e;

        /* renamed from: f, reason: collision with root package name */
        public static final LAYOUT_MANAGER_TYPE f13345f;

        /* renamed from: j, reason: collision with root package name */
        public static final /* synthetic */ LAYOUT_MANAGER_TYPE[] f13346j;

        static {
            LAYOUT_MANAGER_TYPE layout_manager_type = new LAYOUT_MANAGER_TYPE("LINEAR", 0);
            f13343b = layout_manager_type;
            LAYOUT_MANAGER_TYPE layout_manager_type2 = new LAYOUT_MANAGER_TYPE("GRID", 1);
            f13344e = layout_manager_type2;
            LAYOUT_MANAGER_TYPE layout_manager_type3 = new LAYOUT_MANAGER_TYPE("STAGGERED_GRID", 2);
            f13345f = layout_manager_type3;
            f13346j = new LAYOUT_MANAGER_TYPE[]{layout_manager_type, layout_manager_type2, layout_manager_type3};
        }

        public static LAYOUT_MANAGER_TYPE valueOf(String str) {
            return (LAYOUT_MANAGER_TYPE) Enum.valueOf(LAYOUT_MANAGER_TYPE.class, str);
        }

        public static LAYOUT_MANAGER_TYPE[] values() {
            return (LAYOUT_MANAGER_TYPE[]) f13346j.clone();
        }
    }

    public SuperRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f13326b = 10;
        initAttrs(attributeSet);
        if (isInEditMode()) {
            return;
        }
        View inflate = LayoutInflater.from(getContext()).inflate(this.f13323G, this);
        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) inflate.findViewById(R.id.ptr_layout);
        this.f13322F = swipeRefreshLayout;
        swipeRefreshLayout.setEnabled(false);
        ViewStub viewStub = (ViewStub) inflate.findViewById(android.R.id.progress);
        this.f13328f = viewStub;
        viewStub.setLayoutResource(this.f13324H);
        this.f13331n = this.f13328f.inflate();
        ViewStub viewStub2 = (ViewStub) inflate.findViewById(R.id.more_progress);
        this.f13329j = viewStub2;
        viewStub2.setLayoutResource(this.f13342z);
        if (this.f13342z != 0) {
            this.f13332p = this.f13329j.inflate();
        }
        this.f13329j.setVisibility(8);
        ViewStub viewStub3 = (ViewStub) inflate.findViewById(R.id.empty);
        this.f13330m = viewStub3;
        viewStub3.setLayoutResource(this.f13341y);
        if (this.f13341y != 0) {
            this.f13333q = this.f13330m.inflate();
        }
        this.f13330m.setVisibility(8);
        initRecyclerView(inflate);
    }

    public void addItemDecoration(AbstractC1276d0 abstractC1276d0) {
        this.f13327e.addItemDecoration(abstractC1276d0);
    }

    public V getAdapter() {
        return this.f13327e.getAdapter();
    }

    public View getEmptyView() {
        return this.f13333q;
    }

    public View getMoreProgressView() {
        return this.f13332p;
    }

    public View getProgressView() {
        return this.f13331n;
    }

    public RecyclerView getRecyclerView() {
        return this.f13327e;
    }

    public SwipeRefreshLayout getSwipeToRefresh() {
        return this.f13322F;
    }

    public void initAttrs(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.superrecyclerview);
        try {
            this.f13323G = obtainStyledAttributes.getResourceId(R.styleable.superrecyclerview_mainLayoutId, R.layout.layout_progress_recyclerview);
            this.f13334r = obtainStyledAttributes.getBoolean(R.styleable.superrecyclerview_recyclerClipToPadding, false);
            this.f13335s = (int) obtainStyledAttributes.getDimension(R.styleable.superrecyclerview_recyclerPadding, -1.0f);
            this.f13336t = (int) obtainStyledAttributes.getDimension(R.styleable.superrecyclerview_recyclerPaddingTop, 0.0f);
            this.f13337u = (int) obtainStyledAttributes.getDimension(R.styleable.superrecyclerview_recyclerPaddingBottom, 0.0f);
            this.f13338v = (int) obtainStyledAttributes.getDimension(R.styleable.superrecyclerview_recyclerPaddingLeft, 0.0f);
            this.f13339w = (int) obtainStyledAttributes.getDimension(R.styleable.superrecyclerview_recyclerPaddingRight, 0.0f);
            this.f13340x = obtainStyledAttributes.getInt(R.styleable.superrecyclerview_scrollbarStyle, -1);
            this.f13341y = obtainStyledAttributes.getResourceId(R.styleable.superrecyclerview_layout_empty, 0);
            this.f13342z = obtainStyledAttributes.getResourceId(R.styleable.superrecyclerview_layout_moreProgress, R.layout.layout_more_progress);
            this.f13324H = obtainStyledAttributes.getResourceId(R.styleable.superrecyclerview_layout_progress, R.layout.layout_progress);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public void initRecyclerView(View view) {
        View findViewById = view.findViewById(android.R.id.list);
        if (!(findViewById instanceof RecyclerView)) {
            throw new IllegalArgumentException("SuperRecyclerView works with a RecyclerView!");
        }
        RecyclerView recyclerView = (RecyclerView) findViewById;
        this.f13327e = recyclerView;
        recyclerView.setClipToPadding(this.f13334r);
        this.f13327e.addOnScrollListener(new C0808b(this));
        if (AbstractC0924a.compareFloats(this.f13335s, -1.0f)) {
            this.f13327e.setPadding(this.f13338v, this.f13336t, this.f13339w, this.f13337u);
        } else {
            RecyclerView recyclerView2 = this.f13327e;
            int i2 = this.f13335s;
            recyclerView2.setPadding(i2, i2, i2, i2);
        }
        int i7 = this.f13340x;
        if (i7 != -1) {
            this.f13327e.setScrollBarStyle(i7);
        }
    }

    public void setAdapter(V v6) {
        this.f13327e.setAdapter(v6);
        this.f13328f.setVisibility(8);
        this.f13327e.setVisibility(0);
        this.f13322F.setRefreshing(false);
        if (v6 != null) {
            v6.registerAdapterDataObserver(new C0809c(this));
        }
        if (this.f13341y != 0) {
            this.f13330m.setVisibility((v6 == null || v6.getItemCount() <= 0) ? 0 : 8);
        }
    }

    public void setLayoutManager(AbstractC1286i0 abstractC1286i0) {
        this.f13327e.setLayoutManager(abstractC1286i0);
    }

    public void setLoadingMore(boolean z6) {
        this.f13321E = z6;
    }

    public void setNumberBeforeMoreIsCalled(int i2) {
        this.f13326b = i2;
    }

    public void setOnMoreListener(InterfaceC0807a interfaceC0807a) {
        this.f13320D = interfaceC0807a;
    }

    public void setOnScrollListener(AbstractC1294m0 abstractC1294m0) {
        this.f13319C = abstractC1294m0;
    }

    @Override // android.view.View
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.f13327e.setOnTouchListener(onTouchListener);
    }

    public void setRefreshListener(InterfaceC1755n interfaceC1755n) {
        this.f13322F.setEnabled(true);
        this.f13322F.setOnRefreshListener(interfaceC1755n);
    }

    public void setRefreshing(boolean z6) {
        this.f13322F.setRefreshing(z6);
    }

    public void setupMoreListener(InterfaceC0807a interfaceC0807a, int i2) {
        this.f13320D = interfaceC0807a;
        this.f13326b = i2;
    }

    public void setupSwipeToDismiss(e eVar) {
        g gVar = new g(this.f13327e, new C0810d(eVar));
        this.f13318B = gVar.makeScrollListener();
        this.f13327e.setOnTouchListener(gVar);
    }
}
