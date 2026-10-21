package androidx.mediarouter.app;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.mediarouter.R;
import f1.AbstractC0881C;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import m1.B0;

/* loaded from: classes.dex */
public final class j0 extends m1.V {

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f7826d = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public final LayoutInflater f7827e;

    /* renamed from: f, reason: collision with root package name */
    public final Drawable f7828f;

    /* renamed from: g, reason: collision with root package name */
    public final Drawable f7829g;

    /* renamed from: h, reason: collision with root package name */
    public final Drawable f7830h;

    /* renamed from: i, reason: collision with root package name */
    public final Drawable f7831i;

    /* renamed from: j, reason: collision with root package name */
    public g0 f7832j;

    /* renamed from: k, reason: collision with root package name */
    public final int f7833k;

    /* renamed from: l, reason: collision with root package name */
    public final AccelerateDecelerateInterpolator f7834l;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ m0 f7835m;

    public j0(m0 m0Var) {
        this.f7835m = m0Var;
        this.f7827e = LayoutInflater.from(m0Var.f7879w);
        int i2 = R.attr.mediaRouteDefaultIconDrawable;
        Context context = m0Var.f7879w;
        this.f7828f = o0.d(context, i2);
        this.f7829g = o0.d(context, R.attr.mediaRouteTvIconDrawable);
        this.f7830h = o0.d(context, R.attr.mediaRouteSpeakerIconDrawable);
        this.f7831i = o0.d(context, R.attr.mediaRouteSpeakerGroupIconDrawable);
        this.f7833k = context.getResources().getInteger(R.integer.mr_cast_volume_slider_layout_animation_duration_ms);
        this.f7834l = new AccelerateDecelerateInterpolator();
        d();
    }

    public final void a(View view, int i2) {
        a0 a0Var = new a0(view, i2, view.getLayoutParams().height);
        a0Var.setAnimationListener(new b0(this));
        a0Var.setDuration(this.f7833k);
        a0Var.setInterpolator(this.f7834l);
        view.startAnimation(a0Var);
    }

    public final Drawable b(f1.U u6) {
        Uri iconUri = u6.getIconUri();
        if (iconUri != null) {
            try {
                Drawable createFromStream = Drawable.createFromStream(this.f7835m.f7879w.getContentResolver().openInputStream(iconUri), null);
                if (createFromStream != null) {
                    return createFromStream;
                }
            } catch (IOException e3) {
                Log.w("MediaRouteCtrlDialog", "Failed to load " + iconUri, e3);
            }
        }
        int deviceType = u6.getDeviceType();
        return deviceType != 1 ? deviceType != 2 ? u6.isGroup() ? this.f7831i : this.f7828f : this.f7830h : this.f7829g;
    }

    public final void c() {
        m0 m0Var = this.f7835m;
        ArrayList arrayList = m0Var.f7878v;
        arrayList.clear();
        ArrayList arrayList2 = m0Var.f7876t;
        ArrayList arrayList3 = new ArrayList();
        for (f1.U u6 : m0Var.f7874r.getProvider().getRoutes()) {
            f1.T dynamicGroupState = m0Var.f7874r.getDynamicGroupState(u6);
            if (dynamicGroupState != null && dynamicGroupState.isGroupable()) {
                arrayList3.add(u6);
            }
        }
        arrayList.addAll(G.getItemsRemoved(arrayList2, arrayList3));
        notifyDataSetChanged();
    }

    public final void d() {
        ArrayList arrayList = this.f7826d;
        arrayList.clear();
        m0 m0Var = this.f7835m;
        this.f7832j = new g0(m0Var.f7874r, 1);
        ArrayList arrayList2 = m0Var.f7875s;
        if (arrayList2.isEmpty()) {
            arrayList.add(new g0(m0Var.f7874r, 3));
        } else {
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList.add(new g0((f1.U) it.next(), 3));
            }
        }
        ArrayList arrayList3 = m0Var.f7876t;
        boolean z6 = false;
        if (!arrayList3.isEmpty()) {
            Iterator it2 = arrayList3.iterator();
            boolean z7 = false;
            while (it2.hasNext()) {
                f1.U u6 = (f1.U) it2.next();
                if (!arrayList2.contains(u6)) {
                    if (!z7) {
                        AbstractC0881C dynamicGroupController = m0Var.f7874r.getDynamicGroupController();
                        String groupableSelectionTitle = dynamicGroupController != null ? dynamicGroupController.getGroupableSelectionTitle() : null;
                        if (TextUtils.isEmpty(groupableSelectionTitle)) {
                            groupableSelectionTitle = m0Var.f7879w.getString(R.string.mr_dialog_groupable_header);
                        }
                        arrayList.add(new g0(groupableSelectionTitle, 2));
                        z7 = true;
                    }
                    arrayList.add(new g0(u6, 3));
                }
            }
        }
        ArrayList arrayList4 = m0Var.f7877u;
        if (!arrayList4.isEmpty()) {
            Iterator it3 = arrayList4.iterator();
            while (it3.hasNext()) {
                f1.U u7 = (f1.U) it3.next();
                f1.U u8 = m0Var.f7874r;
                if (u8 != u7) {
                    if (!z6) {
                        AbstractC0881C dynamicGroupController2 = u8.getDynamicGroupController();
                        String transferableSectionTitle = dynamicGroupController2 != null ? dynamicGroupController2.getTransferableSectionTitle() : null;
                        if (TextUtils.isEmpty(transferableSectionTitle)) {
                            transferableSectionTitle = m0Var.f7879w.getString(R.string.mr_dialog_transferable_header);
                        }
                        arrayList.add(new g0(transferableSectionTitle, 2));
                        z6 = true;
                    }
                    arrayList.add(new g0(u7, 4));
                }
            }
        }
        c();
    }

    public g0 getItem(int i2) {
        return i2 == 0 ? this.f7832j : (g0) this.f7826d.get(i2 - 1);
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f7826d.size() + 1;
    }

    @Override // m1.V
    public int getItemViewType(int i2) {
        return getItem(i2).getType();
    }

    @Override // m1.V
    public void onBindViewHolder(B0 b02, int i2) {
        f1.T dynamicGroupState;
        int itemViewType = getItemViewType(i2);
        g0 item = getItem(i2);
        m0 m0Var = this.f7835m;
        boolean z6 = true;
        int i7 = 0;
        if (itemViewType == 1) {
            m0Var.f7847E.put(((f1.U) item.getData()).getId(), (Y) b02);
            e0 e0Var = (e0) b02;
            m0 m0Var2 = e0Var.f7781A.f7835m;
            if (m0Var2.f7870b0 && m0Var2.f7874r.getMemberRoutes().size() > 1) {
                i7 = e0Var.f7783z;
            }
            View view = e0Var.f18217a;
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = i7;
            view.setLayoutParams(layoutParams);
            f1.U u6 = (f1.U) item.getData();
            e0Var.n(u6);
            e0Var.f7782y.setText(u6.getName());
            return;
        }
        if (itemViewType == 2) {
            f0 f0Var = (f0) b02;
            f0Var.getClass();
            f0Var.f7789u.setText(item.getData().toString());
            return;
        }
        float f3 = 1.0f;
        if (itemViewType != 3) {
            if (itemViewType != 4) {
                throw new IllegalStateException();
            }
            d0 d0Var = (d0) b02;
            d0Var.getClass();
            f1.U u7 = (f1.U) item.getData();
            d0Var.f7779z = u7;
            ImageView imageView = d0Var.f7775v;
            imageView.setVisibility(0);
            d0Var.f7776w.setVisibility(4);
            j0 j0Var = d0Var.f7773A;
            List<f1.U> memberRoutes = j0Var.f7835m.f7874r.getMemberRoutes();
            if (memberRoutes.size() == 1 && memberRoutes.get(0) == u7) {
                f3 = d0Var.f7778y;
            }
            View view2 = d0Var.f7774u;
            view2.setAlpha(f3);
            view2.setOnClickListener(new c0(d0Var));
            imageView.setImageDrawable(j0Var.b(u7));
            d0Var.f7777x.setText(u7.getName());
            return;
        }
        m0Var.f7847E.put(((f1.U) item.getData()).getId(), (Y) b02);
        i0 i0Var = (i0) b02;
        i0Var.getClass();
        f1.U u8 = (f1.U) item.getData();
        j0 j0Var2 = i0Var.f7820H;
        m0 m0Var3 = j0Var2.f7835m;
        if (u8 == m0Var3.f7874r && u8.getMemberRoutes().size() > 0) {
            Iterator<f1.U> it = u8.getMemberRoutes().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                f1.U next = it.next();
                if (!m0Var3.f7876t.contains(next)) {
                    u8 = next;
                    break;
                }
            }
        }
        i0Var.n(u8);
        Drawable b7 = j0Var2.b(u8);
        ImageView imageView2 = i0Var.f7822z;
        imageView2.setImageDrawable(b7);
        i0Var.f7814B.setText(u8.getName());
        CheckBox checkBox = i0Var.f7816D;
        checkBox.setVisibility(0);
        boolean p6 = i0Var.p(u8);
        boolean z7 = !m0Var3.f7878v.contains(u8) && (!i0Var.p(u8) || m0Var3.f7874r.getMemberRoutes().size() >= 2) && (!i0Var.p(u8) || ((dynamicGroupState = m0Var3.f7874r.getDynamicGroupState(u8)) != null && dynamicGroupState.isUnselectable()));
        checkBox.setChecked(p6);
        i0Var.f7813A.setVisibility(4);
        imageView2.setVisibility(0);
        View view3 = i0Var.f7821y;
        view3.setEnabled(z7);
        checkBox.setEnabled(z7);
        i0Var.f7752v.setEnabled(z7 || p6);
        if (!z7 && !p6) {
            z6 = false;
        }
        i0Var.f7753w.setEnabled(z6);
        h0 h0Var = i0Var.f7819G;
        view3.setOnClickListener(h0Var);
        checkBox.setOnClickListener(h0Var);
        if (p6 && !i0Var.f7751u.isGroup()) {
            i7 = i0Var.f7818F;
        }
        RelativeLayout relativeLayout = i0Var.f7815C;
        ViewGroup.LayoutParams layoutParams2 = relativeLayout.getLayoutParams();
        layoutParams2.height = i7;
        relativeLayout.setLayoutParams(layoutParams2);
        float f7 = i0Var.f7817E;
        view3.setAlpha((z7 || p6) ? 1.0f : f7);
        if (!z7 && p6) {
            f3 = f7;
        }
        checkBox.setAlpha(f3);
    }

    @Override // m1.V
    public B0 onCreateViewHolder(ViewGroup viewGroup, int i2) {
        LayoutInflater layoutInflater = this.f7827e;
        if (i2 == 1) {
            return new e0(this, layoutInflater.inflate(R.layout.mr_cast_group_volume_item, viewGroup, false));
        }
        if (i2 == 2) {
            return new f0(layoutInflater.inflate(R.layout.mr_cast_header_item, viewGroup, false));
        }
        if (i2 == 3) {
            return new i0(this, layoutInflater.inflate(R.layout.mr_cast_route_item, viewGroup, false));
        }
        if (i2 == 4) {
            return new d0(this, layoutInflater.inflate(R.layout.mr_cast_group_item, viewGroup, false));
        }
        throw new IllegalStateException();
    }

    @Override // m1.V
    public void onViewRecycled(B0 b02) {
        super.onViewRecycled(b02);
        this.f7835m.f7847E.values().remove(b02);
    }
}
