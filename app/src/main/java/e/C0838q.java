package e;

import M.AbstractC0181p0;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Message;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.core.widget.NestedScrollView;
import l.C1132b1;

/* renamed from: e.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0838q {

    /* renamed from: A, reason: collision with root package name */
    public TextView f13816A;

    /* renamed from: B, reason: collision with root package name */
    public TextView f13817B;

    /* renamed from: C, reason: collision with root package name */
    public View f13818C;

    /* renamed from: D, reason: collision with root package name */
    public ListAdapter f13819D;

    /* renamed from: F, reason: collision with root package name */
    public final int f13821F;

    /* renamed from: G, reason: collision with root package name */
    public final int f13822G;

    /* renamed from: H, reason: collision with root package name */
    public final int f13823H;

    /* renamed from: I, reason: collision with root package name */
    public final int f13824I;

    /* renamed from: J, reason: collision with root package name */
    public final int f13825J;

    /* renamed from: K, reason: collision with root package name */
    public final boolean f13826K;

    /* renamed from: L, reason: collision with root package name */
    public final HandlerC0836o f13827L;

    /* renamed from: a, reason: collision with root package name */
    public final Context f13829a;

    /* renamed from: b, reason: collision with root package name */
    public final c0 f13830b;

    /* renamed from: c, reason: collision with root package name */
    public final Window f13831c;

    /* renamed from: d, reason: collision with root package name */
    public final int f13832d;

    /* renamed from: e, reason: collision with root package name */
    public CharSequence f13833e;

    /* renamed from: f, reason: collision with root package name */
    public CharSequence f13834f;

    /* renamed from: g, reason: collision with root package name */
    public AlertController$RecycleListView f13835g;

    /* renamed from: h, reason: collision with root package name */
    public View f13836h;

    /* renamed from: i, reason: collision with root package name */
    public int f13837i;

    /* renamed from: k, reason: collision with root package name */
    public Button f13839k;

    /* renamed from: l, reason: collision with root package name */
    public CharSequence f13840l;

    /* renamed from: m, reason: collision with root package name */
    public Message f13841m;

    /* renamed from: n, reason: collision with root package name */
    public Drawable f13842n;

    /* renamed from: o, reason: collision with root package name */
    public Button f13843o;

    /* renamed from: p, reason: collision with root package name */
    public CharSequence f13844p;

    /* renamed from: q, reason: collision with root package name */
    public Message f13845q;

    /* renamed from: r, reason: collision with root package name */
    public Drawable f13846r;

    /* renamed from: s, reason: collision with root package name */
    public Button f13847s;

    /* renamed from: t, reason: collision with root package name */
    public CharSequence f13848t;

    /* renamed from: u, reason: collision with root package name */
    public Message f13849u;

    /* renamed from: v, reason: collision with root package name */
    public Drawable f13850v;

    /* renamed from: w, reason: collision with root package name */
    public NestedScrollView f13851w;

    /* renamed from: y, reason: collision with root package name */
    public Drawable f13853y;

    /* renamed from: z, reason: collision with root package name */
    public ImageView f13854z;

    /* renamed from: j, reason: collision with root package name */
    public boolean f13838j = false;

    /* renamed from: x, reason: collision with root package name */
    public int f13852x = 0;

    /* renamed from: E, reason: collision with root package name */
    public int f13820E = -1;

    /* renamed from: M, reason: collision with root package name */
    public final ViewOnClickListenerC0831j f13828M = new ViewOnClickListenerC0831j(this);

    public C0838q(Context context, c0 c0Var, Window window) {
        this.f13829a = context;
        this.f13830b = c0Var;
        this.f13831c = window;
        this.f13827L = new HandlerC0836o(c0Var);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.AlertDialog, R.attr.alertDialogStyle, 0);
        this.f13821F = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_android_layout, 0);
        obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_buttonPanelSideLayout, 0);
        this.f13822G = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_listLayout, 0);
        this.f13823H = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_multiChoiceItemLayout, 0);
        this.f13824I = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_singleChoiceItemLayout, 0);
        this.f13825J = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_listItemLayout, 0);
        this.f13826K = obtainStyledAttributes.getBoolean(R.styleable.AlertDialog_showTitle, true);
        this.f13832d = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AlertDialog_buttonIconDimen, 0);
        obtainStyledAttributes.recycle();
        c0Var.supportRequestWindowFeature(1);
    }

    public static boolean a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    public static ViewGroup b(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    public ListView getListView() {
        return this.f13835g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void installContent() {
        int i2;
        ListAdapter listAdapter;
        View findViewById;
        this.f13830b.setContentView(this.f13821F);
        int i7 = R.id.parentPanel;
        Window window = this.f13831c;
        View findViewById2 = window.findViewById(i7);
        View findViewById3 = findViewById2.findViewById(R.id.topPanel);
        View findViewById4 = findViewById2.findViewById(R.id.contentPanel);
        View findViewById5 = findViewById2.findViewById(R.id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) findViewById2.findViewById(R.id.customPanel);
        View view = this.f13836h;
        Context context = this.f13829a;
        if (view == null) {
            view = this.f13837i != 0 ? LayoutInflater.from(context).inflate(this.f13837i, viewGroup, false) : null;
        }
        boolean z6 = view != null;
        if (!z6 || !a(view)) {
            window.setFlags(131072, 131072);
        }
        if (z6) {
            FrameLayout frameLayout = (FrameLayout) window.findViewById(R.id.custom);
            frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
            if (this.f13838j) {
                frameLayout.setPadding(0, 0, 0, 0);
            }
            if (this.f13835g != null) {
                ((LinearLayout.LayoutParams) ((C1132b1) viewGroup.getLayoutParams())).weight = 0.0f;
            }
        } else {
            viewGroup.setVisibility(8);
        }
        View findViewById6 = viewGroup.findViewById(R.id.topPanel);
        View findViewById7 = viewGroup.findViewById(R.id.contentPanel);
        View findViewById8 = viewGroup.findViewById(R.id.buttonPanel);
        ViewGroup b7 = b(findViewById6, findViewById3);
        ViewGroup b8 = b(findViewById7, findViewById4);
        ViewGroup b9 = b(findViewById8, findViewById5);
        NestedScrollView nestedScrollView = (NestedScrollView) window.findViewById(R.id.scrollView);
        this.f13851w = nestedScrollView;
        nestedScrollView.setFocusable(false);
        this.f13851w.setNestedScrollingEnabled(false);
        TextView textView = (TextView) b8.findViewById(android.R.id.message);
        this.f13817B = textView;
        if (textView != null) {
            CharSequence charSequence = this.f13834f;
            if (charSequence != null) {
                textView.setText(charSequence);
            } else {
                textView.setVisibility(8);
                this.f13851w.removeView(this.f13817B);
                if (this.f13835g != null) {
                    ViewGroup viewGroup2 = (ViewGroup) this.f13851w.getParent();
                    int indexOfChild = viewGroup2.indexOfChild(this.f13851w);
                    viewGroup2.removeViewAt(indexOfChild);
                    viewGroup2.addView(this.f13835g, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
                } else {
                    b8.setVisibility(8);
                }
            }
        }
        Button button = (Button) b9.findViewById(android.R.id.button1);
        this.f13839k = button;
        ViewOnClickListenerC0831j viewOnClickListenerC0831j = this.f13828M;
        button.setOnClickListener(viewOnClickListenerC0831j);
        boolean isEmpty = TextUtils.isEmpty(this.f13840l);
        int i8 = this.f13832d;
        if (isEmpty && this.f13842n == null) {
            this.f13839k.setVisibility(8);
            i2 = 0;
        } else {
            this.f13839k.setText(this.f13840l);
            Drawable drawable = this.f13842n;
            if (drawable != null) {
                drawable.setBounds(0, 0, i8, i8);
                this.f13839k.setCompoundDrawables(this.f13842n, null, null, null);
            }
            this.f13839k.setVisibility(0);
            i2 = 1;
        }
        Button button2 = (Button) b9.findViewById(android.R.id.button2);
        this.f13843o = button2;
        button2.setOnClickListener(viewOnClickListenerC0831j);
        if (TextUtils.isEmpty(this.f13844p) && this.f13846r == null) {
            this.f13843o.setVisibility(8);
        } else {
            this.f13843o.setText(this.f13844p);
            Drawable drawable2 = this.f13846r;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, i8, i8);
                this.f13843o.setCompoundDrawables(this.f13846r, null, null, null);
            }
            this.f13843o.setVisibility(0);
            i2 |= 2;
        }
        Button button3 = (Button) b9.findViewById(android.R.id.button3);
        this.f13847s = button3;
        button3.setOnClickListener(viewOnClickListenerC0831j);
        if (TextUtils.isEmpty(this.f13848t) && this.f13850v == null) {
            this.f13847s.setVisibility(8);
        } else {
            this.f13847s.setText(this.f13848t);
            Drawable drawable3 = this.f13850v;
            if (drawable3 != null) {
                drawable3.setBounds(0, 0, i8, i8);
                this.f13847s.setCompoundDrawables(this.f13850v, null, null, null);
            }
            this.f13847s.setVisibility(0);
            i2 |= 4;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data != 0) {
            if (i2 == 1) {
                Button button4 = this.f13839k;
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button4.getLayoutParams();
                layoutParams.gravity = 1;
                layoutParams.weight = 0.5f;
                button4.setLayoutParams(layoutParams);
            } else if (i2 == 2) {
                Button button5 = this.f13843o;
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) button5.getLayoutParams();
                layoutParams2.gravity = 1;
                layoutParams2.weight = 0.5f;
                button5.setLayoutParams(layoutParams2);
            } else if (i2 == 4) {
                Button button6 = this.f13847s;
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) button6.getLayoutParams();
                layoutParams3.gravity = 1;
                layoutParams3.weight = 0.5f;
                button6.setLayoutParams(layoutParams3);
            }
        }
        if (i2 == 0) {
            b9.setVisibility(8);
        }
        if (this.f13818C != null) {
            b7.addView(this.f13818C, 0, new ViewGroup.LayoutParams(-1, -2));
            window.findViewById(R.id.title_template).setVisibility(8);
        } else {
            this.f13854z = (ImageView) window.findViewById(android.R.id.icon);
            if (TextUtils.isEmpty(this.f13833e) || !this.f13826K) {
                window.findViewById(R.id.title_template).setVisibility(8);
                this.f13854z.setVisibility(8);
                b7.setVisibility(8);
            } else {
                TextView textView2 = (TextView) window.findViewById(R.id.alertTitle);
                this.f13816A = textView2;
                textView2.setText(this.f13833e);
                int i9 = this.f13852x;
                if (i9 != 0) {
                    this.f13854z.setImageResource(i9);
                } else {
                    Drawable drawable4 = this.f13853y;
                    if (drawable4 != null) {
                        this.f13854z.setImageDrawable(drawable4);
                    } else {
                        this.f13816A.setPadding(this.f13854z.getPaddingLeft(), this.f13854z.getPaddingTop(), this.f13854z.getPaddingRight(), this.f13854z.getPaddingBottom());
                        this.f13854z.setVisibility(8);
                    }
                }
            }
        }
        boolean z7 = viewGroup.getVisibility() != 8;
        boolean z8 = (b7 == null || b7.getVisibility() == 8) ? 0 : 1;
        boolean z9 = b9.getVisibility() != 8;
        if (!z9 && (findViewById = b8.findViewById(R.id.textSpacerNoButtons)) != null) {
            findViewById.setVisibility(0);
        }
        if (z8 != 0) {
            NestedScrollView nestedScrollView2 = this.f13851w;
            if (nestedScrollView2 != null) {
                nestedScrollView2.setClipToPadding(true);
            }
            View findViewById9 = (this.f13834f == null && this.f13835g == null) ? null : b7.findViewById(R.id.titleDividerNoCustom);
            if (findViewById9 != null) {
                findViewById9.setVisibility(0);
            }
        } else {
            View findViewById10 = b8.findViewById(R.id.textSpacerNoTitle);
            if (findViewById10 != null) {
                findViewById10.setVisibility(0);
            }
        }
        AlertController$RecycleListView alertController$RecycleListView = this.f13835g;
        if (alertController$RecycleListView instanceof AlertController$RecycleListView) {
            alertController$RecycleListView.setHasDecor(z8, z9);
        }
        if (!z7) {
            View view2 = this.f13835g;
            if (view2 == null) {
                view2 = this.f13851w;
            }
            if (view2 != null) {
                int i10 = z9 ? 2 : 0;
                View findViewById11 = window.findViewById(R.id.scrollIndicatorUp);
                View findViewById12 = window.findViewById(R.id.scrollIndicatorDown);
                AbstractC0181p0.setScrollIndicators(view2, z8 | i10, 3);
                if (findViewById11 != null) {
                    b8.removeView(findViewById11);
                }
                if (findViewById12 != null) {
                    b8.removeView(findViewById12);
                }
            }
        }
        AlertController$RecycleListView alertController$RecycleListView2 = this.f13835g;
        if (alertController$RecycleListView2 == null || (listAdapter = this.f13819D) == null) {
            return;
        }
        alertController$RecycleListView2.setAdapter(listAdapter);
        int i11 = this.f13820E;
        if (i11 > -1) {
            alertController$RecycleListView2.setItemChecked(i11, true);
            alertController$RecycleListView2.setSelection(i11);
        }
    }

    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f13851w;
        return nestedScrollView != null && nestedScrollView.executeKeyEvent(keyEvent);
    }

    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f13851w;
        return nestedScrollView != null && nestedScrollView.executeKeyEvent(keyEvent);
    }

    public void setButton(int i2, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        if (message == null && onClickListener != null) {
            message = this.f13827L.obtainMessage(i2, onClickListener);
        }
        if (i2 == -3) {
            this.f13848t = charSequence;
            this.f13849u = message;
            this.f13850v = drawable;
        } else if (i2 == -2) {
            this.f13844p = charSequence;
            this.f13845q = message;
            this.f13846r = drawable;
        } else {
            if (i2 != -1) {
                throw new IllegalArgumentException("Button does not exist");
            }
            this.f13840l = charSequence;
            this.f13841m = message;
            this.f13842n = drawable;
        }
    }

    public void setCustomTitle(View view) {
        this.f13818C = view;
    }

    public void setIcon(int i2) {
        this.f13853y = null;
        this.f13852x = i2;
        ImageView imageView = this.f13854z;
        if (imageView != null) {
            if (i2 == 0) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                this.f13854z.setImageResource(this.f13852x);
            }
        }
    }

    public void setMessage(CharSequence charSequence) {
        this.f13834f = charSequence;
        TextView textView = this.f13817B;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void setTitle(CharSequence charSequence) {
        this.f13833e = charSequence;
        TextView textView = this.f13816A;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void setView(View view) {
        this.f13836h = view;
        this.f13837i = 0;
        this.f13838j = false;
    }

    public void setIcon(Drawable drawable) {
        this.f13853y = drawable;
        this.f13852x = 0;
        ImageView imageView = this.f13854z;
        if (imageView != null) {
            if (drawable != null) {
                imageView.setVisibility(0);
                this.f13854z.setImageDrawable(drawable);
            } else {
                imageView.setVisibility(8);
            }
        }
    }
}
