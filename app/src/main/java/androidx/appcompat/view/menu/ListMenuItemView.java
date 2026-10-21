package androidx.appcompat.view.menu;

import M.AbstractC0181p0;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.R;
import k.InterfaceC1061F;
import k.s;
import l.e2;

/* loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements InterfaceC1061F, AbsListView.SelectionBoundsAdjuster {

    /* renamed from: b, reason: collision with root package name */
    public s f4949b;

    /* renamed from: e, reason: collision with root package name */
    public ImageView f4950e;

    /* renamed from: f, reason: collision with root package name */
    public RadioButton f4951f;

    /* renamed from: j, reason: collision with root package name */
    public TextView f4952j;

    /* renamed from: m, reason: collision with root package name */
    public CheckBox f4953m;

    /* renamed from: n, reason: collision with root package name */
    public TextView f4954n;

    /* renamed from: p, reason: collision with root package name */
    public ImageView f4955p;

    /* renamed from: q, reason: collision with root package name */
    public ImageView f4956q;

    /* renamed from: r, reason: collision with root package name */
    public LinearLayout f4957r;

    /* renamed from: s, reason: collision with root package name */
    public final Drawable f4958s;

    /* renamed from: t, reason: collision with root package name */
    public final int f4959t;

    /* renamed from: u, reason: collision with root package name */
    public final Context f4960u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f4961v;

    /* renamed from: w, reason: collision with root package name */
    public final Drawable f4962w;

    /* renamed from: x, reason: collision with root package name */
    public final boolean f4963x;

    /* renamed from: y, reason: collision with root package name */
    public LayoutInflater f4964y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f4965z;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listMenuViewStyle);
    }

    private LayoutInflater getInflater() {
        if (this.f4964y == null) {
            this.f4964y = LayoutInflater.from(getContext());
        }
        return this.f4964y;
    }

    private void setSubMenuArrowVisible(boolean z6) {
        ImageView imageView = this.f4955p;
        if (imageView != null) {
            imageView.setVisibility(z6 ? 0 : 8);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f4956q;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f4956q.getLayoutParams();
        rect.top = this.f4956q.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin + rect.top;
    }

    @Override // k.InterfaceC1061F
    public s getItemData() {
        return this.f4949b;
    }

    @Override // k.InterfaceC1061F
    public void initialize(s sVar, int i2) {
        this.f4949b = sVar;
        boolean z6 = false;
        setVisibility(sVar.isVisible() ? 0 : 8);
        setTitle(prefersCondensedTitle() ? sVar.getTitleCondensed() : sVar.getTitle());
        setCheckable(sVar.isCheckable());
        if (sVar.f17193n.isShortcutsVisible()) {
            if ((sVar.f17193n.isQwertyMode() ? sVar.f17189j : sVar.f17187h) != 0) {
                z6 = true;
            }
        }
        setShortcut(z6, sVar.f17193n.isQwertyMode() ? sVar.f17189j : sVar.f17187h);
        setIcon(sVar.getIcon());
        setEnabled(sVar.isEnabled());
        setSubMenuArrowVisible(sVar.hasSubMenu());
        setContentDescription(sVar.getContentDescription());
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        AbstractC0181p0.setBackground(this, this.f4958s);
        TextView textView = (TextView) findViewById(R.id.title);
        this.f4952j = textView;
        int i2 = this.f4959t;
        if (i2 != -1) {
            textView.setTextAppearance(this.f4960u, i2);
        }
        this.f4954n = (TextView) findViewById(R.id.shortcut);
        ImageView imageView = (ImageView) findViewById(R.id.submenuarrow);
        this.f4955p = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.f4962w);
        }
        this.f4956q = (ImageView) findViewById(R.id.group_divider);
        this.f4957r = (LinearLayout) findViewById(R.id.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i2, int i7) {
        if (this.f4950e != null && this.f4961v) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f4950e.getLayoutParams();
            int i8 = layoutParams.height;
            if (i8 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i8;
            }
        }
        super.onMeasure(i2, i7);
    }

    @Override // k.InterfaceC1061F
    public boolean prefersCondensedTitle() {
        return false;
    }

    public void setCheckable(boolean z6) {
        CompoundButton compoundButton;
        View view;
        if (!z6 && this.f4951f == null && this.f4953m == null) {
            return;
        }
        if (this.f4949b.isExclusiveCheckable()) {
            if (this.f4951f == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                this.f4951f = radioButton;
                LinearLayout linearLayout = this.f4957r;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.f4951f;
            view = this.f4953m;
        } else {
            if (this.f4953m == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                this.f4953m = checkBox;
                LinearLayout linearLayout2 = this.f4957r;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.f4953m;
            view = this.f4951f;
        }
        if (z6) {
            compoundButton.setChecked(this.f4949b.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (view == null || view.getVisibility() == 8) {
                return;
            }
            view.setVisibility(8);
            return;
        }
        CheckBox checkBox2 = this.f4953m;
        if (checkBox2 != null) {
            checkBox2.setVisibility(8);
        }
        RadioButton radioButton2 = this.f4951f;
        if (radioButton2 != null) {
            radioButton2.setVisibility(8);
        }
    }

    public void setChecked(boolean z6) {
        CompoundButton compoundButton;
        if (this.f4949b.isExclusiveCheckable()) {
            if (this.f4951f == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                this.f4951f = radioButton;
                LinearLayout linearLayout = this.f4957r;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.f4951f;
        } else {
            if (this.f4953m == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                this.f4953m = checkBox;
                LinearLayout linearLayout2 = this.f4957r;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.f4953m;
        }
        compoundButton.setChecked(z6);
    }

    public void setForceShowIcon(boolean z6) {
        this.f4965z = z6;
        this.f4961v = z6;
    }

    public void setGroupDividerEnabled(boolean z6) {
        ImageView imageView = this.f4956q;
        if (imageView != null) {
            imageView.setVisibility((this.f4963x || !z6) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        boolean z6 = this.f4949b.shouldShowIcon() || this.f4965z;
        if (z6 || this.f4961v) {
            ImageView imageView = this.f4950e;
            if (imageView == null && drawable == null && !this.f4961v) {
                return;
            }
            if (imageView == null) {
                ImageView imageView2 = (ImageView) getInflater().inflate(R.layout.abc_list_menu_item_icon, (ViewGroup) this, false);
                this.f4950e = imageView2;
                LinearLayout linearLayout = this.f4957r;
                if (linearLayout != null) {
                    linearLayout.addView(imageView2, 0);
                } else {
                    addView(imageView2, 0);
                }
            }
            if (drawable == null && !this.f4961v) {
                this.f4950e.setVisibility(8);
                return;
            }
            ImageView imageView3 = this.f4950e;
            if (!z6) {
                drawable = null;
            }
            imageView3.setImageDrawable(drawable);
            if (this.f4950e.getVisibility() != 0) {
                this.f4950e.setVisibility(0);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0022, code lost:
    
        if (r9 == false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setShortcut(boolean r9, char r10) {
        /*
            r8 = this;
            r10 = 1
            r0 = 8
            if (r9 == 0) goto L25
            k.s r9 = r8.f4949b
            k.p r1 = r9.f17193n
            boolean r1 = r1.isShortcutsVisible()
            r2 = 0
            if (r1 == 0) goto L21
            k.p r1 = r9.f17193n
            boolean r1 = r1.isQwertyMode()
            if (r1 == 0) goto L1b
            char r9 = r9.f17189j
            goto L1d
        L1b:
            char r9 = r9.f17187h
        L1d:
            if (r9 == 0) goto L21
            r9 = r10
            goto L22
        L21:
            r9 = r2
        L22:
            if (r9 == 0) goto L25
            goto L26
        L25:
            r2 = r0
        L26:
            if (r2 != 0) goto Lde
            android.widget.TextView r9 = r8.f4954n
            k.s r1 = r8.f4949b
            k.p r3 = r1.f17193n
            boolean r3 = r3.isQwertyMode()
            if (r3 == 0) goto L37
            char r3 = r1.f17189j
            goto L39
        L37:
            char r3 = r1.f17187h
        L39:
            if (r3 != 0) goto L3f
            java.lang.String r10 = ""
            goto Ldb
        L3f:
            k.p r4 = r1.f17193n
            android.content.Context r5 = r4.getContext()
            android.content.res.Resources r5 = r5.getResources()
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            android.content.Context r7 = r4.getContext()
            android.view.ViewConfiguration r7 = android.view.ViewConfiguration.get(r7)
            boolean r7 = r7.hasPermanentMenuKey()
            if (r7 == 0) goto L65
            int r7 = androidx.appcompat.R.string.abc_prepend_shortcut_label
            java.lang.String r7 = r5.getString(r7)
            r6.append(r7)
        L65:
            boolean r4 = r4.isQwertyMode()
            if (r4 == 0) goto L6e
            int r1 = r1.f17190k
            goto L70
        L6e:
            int r1 = r1.f17188i
        L70:
            int r4 = androidx.appcompat.R.string.abc_menu_meta_shortcut_label
            java.lang.String r4 = r5.getString(r4)
            r7 = 65536(0x10000, float:9.18355E-41)
            k.s.a(r1, r7, r4, r6)
            int r4 = androidx.appcompat.R.string.abc_menu_ctrl_shortcut_label
            java.lang.String r4 = r5.getString(r4)
            r7 = 4096(0x1000, float:5.74E-42)
            k.s.a(r1, r7, r4, r6)
            int r4 = androidx.appcompat.R.string.abc_menu_alt_shortcut_label
            java.lang.String r4 = r5.getString(r4)
            r7 = 2
            k.s.a(r1, r7, r4, r6)
            int r4 = androidx.appcompat.R.string.abc_menu_shift_shortcut_label
            java.lang.String r4 = r5.getString(r4)
            k.s.a(r1, r10, r4, r6)
            int r10 = androidx.appcompat.R.string.abc_menu_sym_shortcut_label
            java.lang.String r10 = r5.getString(r10)
            r4 = 4
            k.s.a(r1, r4, r10, r6)
            int r10 = androidx.appcompat.R.string.abc_menu_function_shortcut_label
            java.lang.String r10 = r5.getString(r10)
            k.s.a(r1, r0, r10, r6)
            if (r3 == r0) goto Lce
            r10 = 10
            if (r3 == r10) goto Lc4
            r10 = 32
            if (r3 == r10) goto Lba
            r6.append(r3)
            goto Ld7
        Lba:
            int r10 = androidx.appcompat.R.string.abc_menu_space_shortcut_label
            java.lang.String r10 = r5.getString(r10)
            r6.append(r10)
            goto Ld7
        Lc4:
            int r10 = androidx.appcompat.R.string.abc_menu_enter_shortcut_label
            java.lang.String r10 = r5.getString(r10)
            r6.append(r10)
            goto Ld7
        Lce:
            int r10 = androidx.appcompat.R.string.abc_menu_delete_shortcut_label
            java.lang.String r10 = r5.getString(r10)
            r6.append(r10)
        Ld7:
            java.lang.String r10 = r6.toString()
        Ldb:
            r9.setText(r10)
        Lde:
            android.widget.TextView r9 = r8.f4954n
            int r9 = r9.getVisibility()
            if (r9 == r2) goto Leb
            android.widget.TextView r9 = r8.f4954n
            r9.setVisibility(r2)
        Leb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.ListMenuItemView.setShortcut(boolean, char):void");
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence == null) {
            if (this.f4952j.getVisibility() != 8) {
                this.f4952j.setVisibility(8);
            }
        } else {
            this.f4952j.setText(charSequence);
            if (this.f4952j.getVisibility() != 0) {
                this.f4952j.setVisibility(0);
            }
        }
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet);
        e2 obtainStyledAttributes = e2.obtainStyledAttributes(getContext(), attributeSet, R.styleable.MenuView, i2, 0);
        this.f4958s = obtainStyledAttributes.getDrawable(R.styleable.MenuView_android_itemBackground);
        this.f4959t = obtainStyledAttributes.getResourceId(R.styleable.MenuView_android_itemTextAppearance, -1);
        this.f4961v = obtainStyledAttributes.getBoolean(R.styleable.MenuView_preserveIconSpacing, false);
        this.f4960u = context;
        this.f4962w = obtainStyledAttributes.getDrawable(R.styleable.MenuView_subMenuArrow);
        TypedArray obtainStyledAttributes2 = context.getTheme().obtainStyledAttributes(null, new int[]{android.R.attr.divider}, R.attr.dropDownListViewStyle, 0);
        this.f4963x = obtainStyledAttributes2.hasValue(0);
        obtainStyledAttributes.recycle();
        obtainStyledAttributes2.recycle();
    }
}
