package J3;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.tabs.TabLayout;

/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public Drawable f1518a;

    /* renamed from: b, reason: collision with root package name */
    public CharSequence f1519b;

    /* renamed from: c, reason: collision with root package name */
    public CharSequence f1520c;

    /* renamed from: d, reason: collision with root package name */
    public int f1521d = -1;

    /* renamed from: e, reason: collision with root package name */
    public View f1522e;

    /* renamed from: f, reason: collision with root package name */
    public TabLayout f1523f;

    /* renamed from: g, reason: collision with root package name */
    public j f1524g;

    public View getCustomView() {
        return this.f1522e;
    }

    public Drawable getIcon() {
        return this.f1518a;
    }

    public int getPosition() {
        return this.f1521d;
    }

    public int getTabLabelVisibility() {
        return 1;
    }

    public CharSequence getText() {
        return this.f1519b;
    }

    public boolean isSelected() {
        TabLayout tabLayout = this.f1523f;
        if (tabLayout == null) {
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }
        int selectedTabPosition = tabLayout.getSelectedTabPosition();
        return selectedTabPosition != -1 && selectedTabPosition == this.f1521d;
    }

    public void select() {
        TabLayout tabLayout = this.f1523f;
        if (tabLayout == null) {
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }
        tabLayout.selectTab(this);
    }

    public h setContentDescription(CharSequence charSequence) {
        this.f1520c = charSequence;
        j jVar = this.f1524g;
        if (jVar != null) {
            jVar.e();
            h hVar = jVar.f1528b;
            jVar.setSelected(hVar != null && hVar.isSelected());
        }
        return this;
    }

    public h setCustomView(View view) {
        this.f1522e = view;
        j jVar = this.f1524g;
        if (jVar != null) {
            jVar.e();
            h hVar = jVar.f1528b;
            jVar.setSelected(hVar != null && hVar.isSelected());
        }
        return this;
    }

    public h setIcon(Drawable drawable) {
        this.f1518a = drawable;
        TabLayout tabLayout = this.f1523f;
        if (tabLayout.f12825I == 1 || tabLayout.f12828L == 2) {
            tabLayout.f(true);
        }
        j jVar = this.f1524g;
        if (jVar != null) {
            jVar.e();
            h hVar = jVar.f1528b;
            jVar.setSelected(hVar != null && hVar.isSelected());
        }
        return this;
    }

    public h setText(CharSequence charSequence) {
        if (TextUtils.isEmpty(this.f1520c) && !TextUtils.isEmpty(charSequence)) {
            this.f1524g.setContentDescription(charSequence);
        }
        this.f1519b = charSequence;
        j jVar = this.f1524g;
        if (jVar != null) {
            jVar.e();
            h hVar = jVar.f1528b;
            jVar.setSelected(hVar != null && hVar.isSelected());
        }
        return this;
    }

    public h setCustomView(int i2) {
        return setCustomView(LayoutInflater.from(this.f1524g.getContext()).inflate(i2, (ViewGroup) this.f1524g, false));
    }
}
