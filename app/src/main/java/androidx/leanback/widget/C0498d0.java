package androidx.leanback.widget;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* renamed from: androidx.leanback.widget.d0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0498d0 extends m1.V {

    /* renamed from: d, reason: collision with root package name */
    public AbstractC0526r0 f6775d;

    /* renamed from: e, reason: collision with root package name */
    public AbstractC0495c0 f6776e;

    /* renamed from: f, reason: collision with root package name */
    public D0 f6777f;

    /* renamed from: g, reason: collision with root package name */
    public C0541z f6778g;

    /* renamed from: h, reason: collision with root package name */
    public Z f6779h;

    /* renamed from: i, reason: collision with root package name */
    public ArrayList f6780i = new ArrayList();

    /* renamed from: j, reason: collision with root package name */
    public final Y f6781j = new Y(this);

    public void clear() {
        setAdapter(null);
    }

    public InterfaceC0539y getFacetProvider(int i2) {
        return (InterfaceC0539y) this.f6780i.get(i2);
    }

    @Override // m1.V
    public int getItemCount() {
        AbstractC0526r0 abstractC0526r0 = this.f6775d;
        if (abstractC0526r0 != null) {
            return abstractC0526r0.size();
        }
        return 0;
    }

    @Override // m1.V
    public long getItemId(int i2) {
        return this.f6775d.getId(i2);
    }

    @Override // m1.V
    public int getItemViewType(int i2) {
        D0 d02 = this.f6777f;
        if (d02 == null) {
            d02 = this.f6775d.getPresenterSelector();
        }
        C0 presenter = d02.getPresenter(this.f6775d.get(i2));
        int indexOf = this.f6780i.indexOf(presenter);
        if (indexOf < 0) {
            this.f6780i.add(presenter);
            indexOf = this.f6780i.indexOf(presenter);
            onAddPresenter(presenter, indexOf);
            Z z6 = this.f6779h;
            if (z6 != null) {
                z6.onAddPresenter(presenter, indexOf);
            }
        }
        return indexOf;
    }

    public ArrayList<C0> getPresenterMapper() {
        return this.f6780i;
    }

    public void onAddPresenter(C0 c02, int i2) {
    }

    public void onAttachedToWindow(C0492b0 c0492b0) {
    }

    public void onBind(C0492b0 c0492b0) {
    }

    @Override // m1.V
    public final void onBindViewHolder(m1.B0 b02, int i2) {
        C0492b0 c0492b0 = (C0492b0) b02;
        Object obj = this.f6775d.get(i2);
        c0492b0.f6770w = obj;
        c0492b0.f6768u.onBindViewHolder(c0492b0.f6769v, obj);
        onBind(c0492b0);
        Z z6 = this.f6779h;
        if (z6 != null) {
            z6.onBind(c0492b0);
        }
    }

    public void onCreate(C0492b0 c0492b0) {
    }

    @Override // m1.V
    public final m1.B0 onCreateViewHolder(ViewGroup viewGroup, int i2) {
        A0 onCreateViewHolder;
        View view;
        C0 c02 = (C0) this.f6780i.get(i2);
        AbstractC0495c0 abstractC0495c0 = this.f6776e;
        if (abstractC0495c0 != null) {
            view = abstractC0495c0.createWrapper(viewGroup);
            onCreateViewHolder = c02.onCreateViewHolder(viewGroup);
            this.f6776e.wrap(view, onCreateViewHolder.f6460a);
        } else {
            onCreateViewHolder = c02.onCreateViewHolder(viewGroup);
            view = onCreateViewHolder.f6460a;
        }
        C0492b0 c0492b0 = new C0492b0(c02, view, onCreateViewHolder);
        onCreate(c0492b0);
        Z z6 = this.f6779h;
        if (z6 != null) {
            z6.onCreate(c0492b0);
        }
        View view2 = c0492b0.f6769v.f6460a;
        View.OnFocusChangeListener onFocusChangeListener = view2.getOnFocusChangeListener();
        C0541z c0541z = this.f6778g;
        if (c0541z == null) {
            if (onFocusChangeListener instanceof ViewOnFocusChangeListenerC0489a0) {
                view2.setOnFocusChangeListener(((ViewOnFocusChangeListenerC0489a0) onFocusChangeListener).f6764b);
            }
            return c0492b0;
        }
        if (onFocusChangeListener instanceof ViewOnFocusChangeListenerC0489a0) {
            ViewOnFocusChangeListenerC0489a0 viewOnFocusChangeListenerC0489a0 = (ViewOnFocusChangeListenerC0489a0) onFocusChangeListener;
            viewOnFocusChangeListenerC0489a0.f6765e = this.f6776e != null;
            viewOnFocusChangeListenerC0489a0.f6766f = c0541z;
        } else {
            view2.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0489a0(onFocusChangeListener, this.f6776e != null, c0541z));
        }
        this.f6778g.onInitializeView(view);
        return c0492b0;
    }

    public void onDetachedFromWindow(C0492b0 c0492b0) {
    }

    @Override // m1.V
    public final boolean onFailedToRecycleView(m1.B0 b02) {
        onViewRecycled(b02);
        return false;
    }

    public void onUnbind(C0492b0 c0492b0) {
    }

    @Override // m1.V
    public final void onViewAttachedToWindow(m1.B0 b02) {
        C0492b0 c0492b0 = (C0492b0) b02;
        onAttachedToWindow(c0492b0);
        Z z6 = this.f6779h;
        if (z6 != null) {
            z6.onAttachedToWindow(c0492b0);
        }
        c0492b0.f6768u.onViewAttachedToWindow(c0492b0.f6769v);
    }

    @Override // m1.V
    public final void onViewDetachedFromWindow(m1.B0 b02) {
        C0492b0 c0492b0 = (C0492b0) b02;
        c0492b0.f6768u.onViewDetachedFromWindow(c0492b0.f6769v);
        onDetachedFromWindow(c0492b0);
        Z z6 = this.f6779h;
        if (z6 != null) {
            z6.onDetachedFromWindow(c0492b0);
        }
    }

    @Override // m1.V
    public final void onViewRecycled(m1.B0 b02) {
        C0492b0 c0492b0 = (C0492b0) b02;
        c0492b0.f6768u.onUnbindViewHolder(c0492b0.f6769v);
        onUnbind(c0492b0);
        Z z6 = this.f6779h;
        if (z6 != null) {
            z6.onUnbind(c0492b0);
        }
        c0492b0.f6770w = null;
    }

    public void setAdapter(AbstractC0526r0 abstractC0526r0) {
        AbstractC0526r0 abstractC0526r02 = this.f6775d;
        if (abstractC0526r0 == abstractC0526r02) {
            return;
        }
        Y y6 = this.f6781j;
        if (abstractC0526r02 != null) {
            abstractC0526r02.unregisterObserver(y6);
        }
        this.f6775d = abstractC0526r0;
        if (abstractC0526r0 == null) {
            notifyDataSetChanged();
            return;
        }
        abstractC0526r0.registerObserver(y6);
        if (hasStableIds() != this.f6775d.hasStableIds()) {
            setHasStableIds(this.f6775d.hasStableIds());
        }
        notifyDataSetChanged();
    }

    public void setAdapterListener(Z z6) {
        this.f6779h = z6;
    }

    public void setPresenter(D0 d02) {
        this.f6777f = d02;
        notifyDataSetChanged();
    }

    public void setPresenterMapper(ArrayList<C0> arrayList) {
        this.f6780i = arrayList;
    }

    public void setWrapper(AbstractC0495c0 abstractC0495c0) {
        this.f6776e = abstractC0495c0;
    }

    @Override // m1.V
    public final void onBindViewHolder(m1.B0 b02, int i2, List list) {
        C0492b0 c0492b0 = (C0492b0) b02;
        Object obj = this.f6775d.get(i2);
        c0492b0.f6770w = obj;
        c0492b0.f6768u.onBindViewHolder(c0492b0.f6769v, obj, list);
        onBind(c0492b0);
        Z z6 = this.f6779h;
        if (z6 != null) {
            z6.onBind(c0492b0, list);
        }
    }
}
