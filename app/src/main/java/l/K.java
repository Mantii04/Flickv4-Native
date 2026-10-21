package l;

import M.AbstractC0181p0;
import M.C0160f;
import M.C0174m;
import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ActionMode;
import android.view.DragEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
import androidx.appcompat.R;

/* loaded from: classes.dex */
public class K extends EditText implements M.N, S.D {

    /* renamed from: b, reason: collision with root package name */
    public final C1120B f17728b;

    /* renamed from: e, reason: collision with root package name */
    public final C1199y0 f17729e;

    /* renamed from: f, reason: collision with root package name */
    public final C1176q0 f17730f;

    /* renamed from: j, reason: collision with root package name */
    public final S.B f17731j;

    /* renamed from: m, reason: collision with root package name */
    public final L f17732m;

    /* renamed from: n, reason: collision with root package name */
    public J f17733n;

    public K(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.editTextStyle);
    }

    private J getSuperCaller() {
        if (this.f17733n == null) {
            this.f17733n = new J(this);
        }
        return this.f17733n;
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C1120B c1120b = this.f17728b;
        if (c1120b != null) {
            c1120b.a();
        }
        C1199y0 c1199y0 = this.f17729e;
        if (c1199y0 != null) {
            c1199y0.b();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return S.A.unwrapCustomSelectionActionModeCallback(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        C1120B c1120b = this.f17728b;
        if (c1120b != null) {
            return c1120b.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C1120B c1120b = this.f17728b;
        if (c1120b != null) {
            return c1120b.c();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f17729e.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f17729e.e();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        C1176q0 c1176q0;
        return (Build.VERSION.SDK_INT >= 28 || (c1176q0 = this.f17730f) == null) ? getSuperCaller().getTextClassifier() : c1176q0.getTextClassifier();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        String[] onReceiveContentMimeTypes;
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f17729e.getClass();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 30 && onCreateInputConnection != null) {
            R.c.setInitialSurroundingText(editorInfo, getText());
        }
        androidx.leanback.widget.W.f(onCreateInputConnection, editorInfo, this);
        if (onCreateInputConnection != null && i2 <= 30 && (onReceiveContentMimeTypes = AbstractC0181p0.getOnReceiveContentMimeTypes(this)) != null) {
            R.c.setContentMimeTypes(editorInfo, onReceiveContentMimeTypes);
            onCreateInputConnection = R.g.createWrapper(this, onCreateInputConnection, editorInfo);
        }
        return this.f17732m.f17736b.onCreateInputConnection(onCreateInputConnection, editorInfo);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onDragEvent(DragEvent dragEvent) {
        Activity activity;
        int i2 = Build.VERSION.SDK_INT;
        boolean z6 = false;
        if (i2 < 31 && i2 >= 24 && dragEvent.getLocalState() == null && AbstractC0181p0.getOnReceiveContentMimeTypes(this) != null) {
            Context context = getContext();
            while (true) {
                if (!(context instanceof ContextWrapper)) {
                    activity = null;
                    break;
                }
                if (context instanceof Activity) {
                    activity = (Activity) context;
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            }
            if (activity == null) {
                Log.i("ReceiveContent", "Can't handle drop: no activity: view=" + this);
            } else if (dragEvent.getAction() != 1 && dragEvent.getAction() == 3) {
                z6 = X.a(dragEvent, this, activity);
            }
        }
        if (z6) {
            return true;
        }
        return super.onDragEvent(dragEvent);
    }

    @Override // M.N
    public C0174m onReceiveContent(C0174m c0174m) {
        return this.f17731j.onReceiveContent(this, c0174m);
    }

    @Override // android.widget.EditText, android.widget.TextView
    public boolean onTextContextMenuItem(int i2) {
        if (Build.VERSION.SDK_INT >= 31 || AbstractC0181p0.getOnReceiveContentMimeTypes(this) == null || !(i2 == 16908322 || i2 == 16908337)) {
            return super.onTextContextMenuItem(i2);
        }
        ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService("clipboard");
        ClipData primaryClip = clipboardManager == null ? null : clipboardManager.getPrimaryClip();
        if (primaryClip != null && primaryClip.getItemCount() > 0) {
            AbstractC0181p0.performReceiveContent(this, new C0160f(primaryClip, 1).setFlags(i2 == 16908322 ? 0 : 1).build());
        }
        return true;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C1120B c1120b = this.f17728b;
        if (c1120b != null) {
            c1120b.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        C1120B c1120b = this.f17728b;
        if (c1120b != null) {
            c1120b.f(i2);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C1199y0 c1199y0 = this.f17729e;
        if (c1199y0 != null) {
            c1199y0.b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C1199y0 c1199y0 = this.f17729e;
        if (c1199y0 != null) {
            c1199y0.b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(S.A.wrapCustomSelectionActionModeCallback(this, callback));
    }

    public void setEmojiCompatEnabled(boolean z6) {
        this.f17732m.f17736b.setEnabled(z6);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.f17732m.a(keyListener));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C1120B c1120b = this.f17728b;
        if (c1120b != null) {
            c1120b.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C1120B c1120b = this.f17728b;
        if (c1120b != null) {
            c1120b.i(mode);
        }
    }

    @Override // S.D
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        C1199y0 c1199y0 = this.f17729e;
        c1199y0.k(colorStateList);
        c1199y0.b();
    }

    @Override // S.D
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        C1199y0 c1199y0 = this.f17729e;
        c1199y0.l(mode);
        c1199y0.b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        C1199y0 c1199y0 = this.f17729e;
        if (c1199y0 != null) {
            c1199y0.g(context, i2);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        C1176q0 c1176q0;
        if (Build.VERSION.SDK_INT >= 28 || (c1176q0 = this.f17730f) == null) {
            getSuperCaller().setTextClassifier(textClassifier);
        } else {
            c1176q0.setTextClassifier(textClassifier);
        }
    }

    public K(Context context, AttributeSet attributeSet, int i2) {
        super(b2.wrap(context), attributeSet, i2);
        a2.checkAppCompatTheme(this, getContext());
        C1120B c1120b = new C1120B(this);
        this.f17728b = c1120b;
        c1120b.d(attributeSet, i2);
        C1199y0 c1199y0 = new C1199y0(this);
        this.f17729e = c1199y0;
        c1199y0.f(attributeSet, i2);
        c1199y0.b();
        this.f17730f = new C1176q0(this);
        this.f17731j = new S.B();
        L l7 = new L(this);
        this.f17732m = l7;
        l7.b(attributeSet, i2);
        KeyListener keyListener = getKeyListener();
        if (keyListener instanceof NumberKeyListener) {
            return;
        }
        boolean isFocusable = super.isFocusable();
        boolean isClickable = super.isClickable();
        boolean isLongClickable = super.isLongClickable();
        int inputType = super.getInputType();
        KeyListener a7 = l7.a(keyListener);
        if (a7 == keyListener) {
            return;
        }
        super.setKeyListener(a7);
        super.setRawInputType(inputType);
        super.setFocusable(isFocusable);
        super.setClickable(isClickable);
        super.setLongClickable(isLongClickable);
    }

    @Override // android.widget.EditText, android.widget.TextView
    public Editable getText() {
        return Build.VERSION.SDK_INT >= 28 ? super.getText() : super.getEditableText();
    }
}
