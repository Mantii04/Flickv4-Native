package androidx.appcompat.widget;

import M.AbstractC0181p0;
import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import androidx.appcompat.R;
import com.google.firebase.sessions.settings.RemoteSettings;
import e.s0;
import flix.com.vision.subtitles.OpenSubtitles;
import j.InterfaceC1021d;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import l.AbstractC1135c1;
import l.C1119A;
import l.H1;
import l.I1;
import l.J1;
import l.K1;
import l.L1;
import l.M1;
import l.N1;
import l.O1;
import l.P1;
import l.Q1;
import l.R1;
import l.T1;
import l.U1;
import l.W1;
import l.e2;
import l.t2;

/* loaded from: classes.dex */
public class SearchView extends AbstractC1135c1 implements InterfaceC1021d {

    /* renamed from: p0, reason: collision with root package name */
    public static final s0 f5046p0;

    /* renamed from: A, reason: collision with root package name */
    public final View f5047A;

    /* renamed from: B, reason: collision with root package name */
    public final View f5048B;

    /* renamed from: C, reason: collision with root package name */
    public final ImageView f5049C;

    /* renamed from: D, reason: collision with root package name */
    public final ImageView f5050D;

    /* renamed from: E, reason: collision with root package name */
    public final ImageView f5051E;

    /* renamed from: F, reason: collision with root package name */
    public final ImageView f5052F;

    /* renamed from: G, reason: collision with root package name */
    public final View f5053G;

    /* renamed from: H, reason: collision with root package name */
    public U1 f5054H;

    /* renamed from: I, reason: collision with root package name */
    public final Rect f5055I;

    /* renamed from: J, reason: collision with root package name */
    public final Rect f5056J;

    /* renamed from: K, reason: collision with root package name */
    public final int[] f5057K;

    /* renamed from: L, reason: collision with root package name */
    public final int[] f5058L;

    /* renamed from: M, reason: collision with root package name */
    public final ImageView f5059M;

    /* renamed from: N, reason: collision with root package name */
    public final Drawable f5060N;

    /* renamed from: O, reason: collision with root package name */
    public final int f5061O;

    /* renamed from: P, reason: collision with root package name */
    public final int f5062P;

    /* renamed from: Q, reason: collision with root package name */
    public final Intent f5063Q;

    /* renamed from: R, reason: collision with root package name */
    public final Intent f5064R;

    /* renamed from: S, reason: collision with root package name */
    public final CharSequence f5065S;

    /* renamed from: T, reason: collision with root package name */
    public View.OnFocusChangeListener f5066T;

    /* renamed from: U, reason: collision with root package name */
    public View.OnClickListener f5067U;

    /* renamed from: V, reason: collision with root package name */
    public boolean f5068V;

    /* renamed from: W, reason: collision with root package name */
    public boolean f5069W;

    /* renamed from: a0, reason: collision with root package name */
    public T.c f5070a0;

    /* renamed from: b0, reason: collision with root package name */
    public boolean f5071b0;

    /* renamed from: c0, reason: collision with root package name */
    public CharSequence f5072c0;

    /* renamed from: d0, reason: collision with root package name */
    public boolean f5073d0;

    /* renamed from: e0, reason: collision with root package name */
    public boolean f5074e0;

    /* renamed from: f0, reason: collision with root package name */
    public int f5075f0;

    /* renamed from: g0, reason: collision with root package name */
    public boolean f5076g0;

    /* renamed from: h0, reason: collision with root package name */
    public CharSequence f5077h0;

    /* renamed from: i0, reason: collision with root package name */
    public boolean f5078i0;

    /* renamed from: j0, reason: collision with root package name */
    public int f5079j0;

    /* renamed from: k0, reason: collision with root package name */
    public SearchableInfo f5080k0;

    /* renamed from: l0, reason: collision with root package name */
    public Bundle f5081l0;

    /* renamed from: m0, reason: collision with root package name */
    public final I1 f5082m0;

    /* renamed from: n0, reason: collision with root package name */
    public final J1 f5083n0;

    /* renamed from: o0, reason: collision with root package name */
    public final WeakHashMap f5084o0;

    /* renamed from: y, reason: collision with root package name */
    public final SearchAutoComplete f5085y;

    /* renamed from: z, reason: collision with root package name */
    public final View f5086z;

    public static class SearchAutoComplete extends C1119A {

        /* renamed from: m, reason: collision with root package name */
        public int f5087m;

        /* renamed from: n, reason: collision with root package name */
        public SearchView f5088n;

        /* renamed from: p, reason: collision with root package name */
        public boolean f5089p;

        /* renamed from: q, reason: collision with root package name */
        public final d f5090q;

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, R.attr.autoCompleteTextViewStyle);
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i2 = configuration.screenWidthDp;
            int i7 = configuration.screenHeightDp;
            if (i2 >= 960 && i7 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i2 < 600) {
                return (i2 < 640 || i7 < 480) ? 160 : 192;
            }
            return 192;
        }

        public final void a() {
            if (Build.VERSION.SDK_INT >= 29) {
                c.b(this, 1);
                if (enoughToFilter()) {
                    showDropDown();
                    return;
                }
                return;
            }
            s0 s0Var = SearchView.f5046p0;
            s0Var.getClass();
            s0.b();
            Method method = (Method) s0Var.f13867c;
            if (method != null) {
                try {
                    method.invoke(this, Boolean.TRUE);
                } catch (Exception unused) {
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.f5087m <= 0 || super.enoughToFilter();
        }

        @Override // l.C1119A, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f5089p) {
                d dVar = this.f5090q;
                removeCallbacks(dVar);
                post(dVar);
            }
            return onCreateInputConnection;
        }

        @Override // android.view.View
        public void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onFocusChanged(boolean z6, int i2, Rect rect) {
            super.onFocusChanged(z6, i2, rect);
            SearchView searchView = this.f5088n;
            searchView.o(searchView.isIconified());
            searchView.post(searchView.f5082m0);
            if (searchView.f5085y.hasFocus()) {
                searchView.e();
            }
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i2, KeyEvent keyEvent) {
            if (i2 == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f5088n.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i2, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onWindowFocusChanged(boolean z6) {
            super.onWindowFocusChanged(z6);
            if (z6 && this.f5088n.hasFocus() && getVisibility() == 0) {
                this.f5089p = true;
                Context context = getContext();
                s0 s0Var = SearchView.f5046p0;
                if (context.getResources().getConfiguration().orientation == 2) {
                    a();
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        public void replaceText(CharSequence charSequence) {
        }

        public void setImeVisibility(boolean z6) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            d dVar = this.f5090q;
            if (!z6) {
                this.f5089p = false;
                removeCallbacks(dVar);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (!inputMethodManager.isActive(this)) {
                    this.f5089p = true;
                    return;
                }
                this.f5089p = false;
                removeCallbacks(dVar);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        public void setSearchView(SearchView searchView) {
            this.f5088n = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i2) {
            super.setThreshold(i2);
            this.f5087m = i2;
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i2) {
            super(context, attributeSet, i2);
            this.f5090q = new d(this);
            this.f5087m = getThreshold();
        }
    }

    static {
        s0 s0Var = null;
        if (Build.VERSION.SDK_INT < 29) {
            s0 s0Var2 = new s0();
            s0Var2.f13865a = null;
            s0Var2.f13866b = null;
            s0Var2.f13867c = null;
            s0.b();
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                s0Var2.f13865a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                s0Var2.f13866b = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                s0Var2.f13867c = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
            s0Var = s0Var2;
        }
        f5046p0 = s0Var;
    }

    public SearchView(Context context) {
        this(context, null);
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_width);
    }

    public final Intent c(Uri uri, String str, String str2, String str3) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.f5077h0);
        if (str3 != null) {
            intent.putExtra(OpenSubtitles.Params.Key.QUERY, str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.f5081l0;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        intent.setComponent(this.f5080k0.getSearchActivity());
        return intent;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.f5074e0 = true;
        super.clearFocus();
        SearchAutoComplete searchAutoComplete = this.f5085y;
        searchAutoComplete.clearFocus();
        searchAutoComplete.setImeVisibility(false);
        this.f5074e0 = false;
    }

    public final Intent d(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1107296256);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f5081l0;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        Resources resources = getResources();
        String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        int voiceMaxResults = searchableInfo.getVoiceMaxResults() != 0 ? searchableInfo.getVoiceMaxResults() : 1;
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", voiceMaxResults);
        intent3.putExtra("calling_package", searchActivity != null ? searchActivity.flattenToShortString() : null);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    public final void e() {
        int i2 = Build.VERSION.SDK_INT;
        SearchAutoComplete searchAutoComplete = this.f5085y;
        if (i2 >= 29) {
            c.a(searchAutoComplete);
            return;
        }
        s0 s0Var = f5046p0;
        s0Var.getClass();
        s0.b();
        Method method = (Method) s0Var.f13865a;
        if (method != null) {
            try {
                method.invoke(searchAutoComplete, new Object[0]);
            } catch (Exception unused) {
            }
        }
        s0Var.getClass();
        s0.b();
        Method method2 = (Method) s0Var.f13866b;
        if (method2 != null) {
            try {
                method2.invoke(searchAutoComplete, new Object[0]);
            } catch (Exception unused2) {
            }
        }
    }

    public final void f() {
        SearchAutoComplete searchAutoComplete = this.f5085y;
        if (!TextUtils.isEmpty(searchAutoComplete.getText())) {
            searchAutoComplete.setText("");
            searchAutoComplete.requestFocus();
            searchAutoComplete.setImeVisibility(true);
        } else if (this.f5068V) {
            clearFocus();
            o(true);
        }
    }

    public final void g(int i2) {
        int i7;
        String columnString;
        Cursor cursor = this.f5070a0.getCursor();
        if (cursor != null && cursor.moveToPosition(i2)) {
            Intent intent = null;
            try {
                String columnString2 = W1.getColumnString(cursor, "suggest_intent_action");
                if (columnString2 == null) {
                    columnString2 = this.f5080k0.getSuggestIntentAction();
                }
                if (columnString2 == null) {
                    columnString2 = "android.intent.action.SEARCH";
                }
                String columnString3 = W1.getColumnString(cursor, "suggest_intent_data");
                if (columnString3 == null) {
                    columnString3 = this.f5080k0.getSuggestIntentData();
                }
                if (columnString3 != null && (columnString = W1.getColumnString(cursor, "suggest_intent_data_id")) != null) {
                    columnString3 = columnString3 + RemoteSettings.FORWARD_SLASH_STRING + Uri.encode(columnString);
                }
                intent = c(columnString3 == null ? null : Uri.parse(columnString3), columnString2, W1.getColumnString(cursor, "suggest_intent_extra_data"), W1.getColumnString(cursor, "suggest_intent_query"));
            } catch (RuntimeException e3) {
                try {
                    i7 = cursor.getPosition();
                } catch (RuntimeException unused) {
                    i7 = -1;
                }
                Log.w("SearchView", "Search suggestions cursor at row " + i7 + " returned exception.", e3);
            }
            if (intent != null) {
                try {
                    getContext().startActivity(intent);
                } catch (RuntimeException e7) {
                    Log.e("SearchView", "Failed launch activity: " + intent, e7);
                }
            }
        }
        SearchAutoComplete searchAutoComplete = this.f5085y;
        searchAutoComplete.setImeVisibility(false);
        searchAutoComplete.dismissDropDown();
    }

    public int getImeOptions() {
        return this.f5085y.getImeOptions();
    }

    public int getInputType() {
        return this.f5085y.getInputType();
    }

    public int getMaxWidth() {
        return this.f5075f0;
    }

    public CharSequence getQuery() {
        return this.f5085y.getText();
    }

    public CharSequence getQueryHint() {
        CharSequence charSequence = this.f5072c0;
        if (charSequence != null) {
            return charSequence;
        }
        SearchableInfo searchableInfo = this.f5080k0;
        return (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.f5065S : getContext().getText(this.f5080k0.getHintId());
    }

    public int getSuggestionCommitIconResId() {
        return this.f5062P;
    }

    public int getSuggestionRowLayout() {
        return this.f5061O;
    }

    public T.c getSuggestionsAdapter() {
        return this.f5070a0;
    }

    public final void h(int i2) {
        Editable text = this.f5085y.getText();
        Cursor cursor = this.f5070a0.getCursor();
        if (cursor == null) {
            return;
        }
        if (!cursor.moveToPosition(i2)) {
            setQuery(text);
            return;
        }
        CharSequence convertToString = this.f5070a0.convertToString(cursor);
        if (convertToString != null) {
            setQuery(convertToString);
        } else {
            setQuery(text);
        }
    }

    public final void i() {
        SearchAutoComplete searchAutoComplete = this.f5085y;
        Editable text = searchAutoComplete.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        if (this.f5080k0 != null) {
            getContext().startActivity(c(null, "android.intent.action.SEARCH", null, text.toString()));
        }
        searchAutoComplete.setImeVisibility(false);
        searchAutoComplete.dismissDropDown();
    }

    public boolean isIconified() {
        return this.f5069W;
    }

    public final void j() {
        boolean isEmpty = TextUtils.isEmpty(this.f5085y.getText());
        int i2 = (!isEmpty || (this.f5068V && !this.f5078i0)) ? 0 : 8;
        ImageView imageView = this.f5051E;
        imageView.setVisibility(i2);
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            drawable.setState(!isEmpty ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    public final void k() {
        int[] iArr = this.f5085y.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.f5047A.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.f5048B.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    public final void l() {
        Drawable drawable;
        CharSequence queryHint = getQueryHint();
        if (queryHint == null) {
            queryHint = "";
        }
        boolean z6 = this.f5068V;
        SearchAutoComplete searchAutoComplete = this.f5085y;
        if (z6 && (drawable = this.f5060N) != null) {
            int textSize = (int) (searchAutoComplete.getTextSize() * 1.25d);
            drawable.setBounds(0, 0, textSize, textSize);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
            spannableStringBuilder.setSpan(new ImageSpan(drawable), 1, 2, 33);
            spannableStringBuilder.append(queryHint);
            queryHint = spannableStringBuilder;
        }
        searchAutoComplete.setHint(queryHint);
    }

    public final void m() {
        this.f5048B.setVisibility(((this.f5071b0 || this.f5076g0) && !isIconified() && (this.f5050D.getVisibility() == 0 || this.f5052F.getVisibility() == 0)) ? 0 : 8);
    }

    public final void n(boolean z6) {
        boolean z7 = this.f5071b0;
        this.f5050D.setVisibility((!z7 || !(z7 || this.f5076g0) || isIconified() || !hasFocus() || (!z6 && this.f5076g0)) ? 8 : 0);
    }

    public final void o(boolean z6) {
        this.f5069W = z6;
        int i2 = 8;
        int i7 = z6 ? 0 : 8;
        boolean isEmpty = TextUtils.isEmpty(this.f5085y.getText());
        this.f5049C.setVisibility(i7);
        n(!isEmpty);
        this.f5086z.setVisibility(z6 ? 8 : 0);
        ImageView imageView = this.f5059M;
        if (imageView.getDrawable() != null && !this.f5068V) {
            i2 = 0;
        }
        imageView.setVisibility(i2);
        j();
        p(isEmpty);
        m();
    }

    @Override // j.InterfaceC1021d
    public void onActionViewCollapsed() {
        setQuery("", false);
        clearFocus();
        o(true);
        this.f5085y.setImeOptions(this.f5079j0);
        this.f5078i0 = false;
    }

    @Override // j.InterfaceC1021d
    public void onActionViewExpanded() {
        if (this.f5078i0) {
            return;
        }
        this.f5078i0 = true;
        SearchAutoComplete searchAutoComplete = this.f5085y;
        int imeOptions = searchAutoComplete.getImeOptions();
        this.f5079j0 = imeOptions;
        searchAutoComplete.setImeOptions(imeOptions | 33554432);
        searchAutoComplete.setText("");
        setIconified(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.f5082m0);
        post(this.f5083n0);
        super.onDetachedFromWindow();
    }

    @Override // l.AbstractC1135c1, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        super.onLayout(z6, i2, i7, i8, i9);
        if (z6) {
            SearchAutoComplete searchAutoComplete = this.f5085y;
            int[] iArr = this.f5057K;
            searchAutoComplete.getLocationInWindow(iArr);
            int[] iArr2 = this.f5058L;
            getLocationInWindow(iArr2);
            int i10 = iArr[1] - iArr2[1];
            int i11 = iArr[0] - iArr2[0];
            int width = searchAutoComplete.getWidth() + i11;
            int height = searchAutoComplete.getHeight() + i10;
            Rect rect = this.f5055I;
            rect.set(i11, i10, width, height);
            int i12 = rect.left;
            int i13 = rect.right;
            int i14 = i9 - i7;
            Rect rect2 = this.f5056J;
            rect2.set(i12, 0, i13, i14);
            U1 u12 = this.f5054H;
            if (u12 != null) {
                u12.setBounds(rect2, rect);
                return;
            }
            U1 u13 = new U1(rect2, rect, searchAutoComplete);
            this.f5054H = u13;
            setTouchDelegate(u13);
        }
    }

    @Override // l.AbstractC1135c1, android.view.View
    public void onMeasure(int i2, int i7) {
        int i8;
        if (isIconified()) {
            super.onMeasure(i2, i7);
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            int i9 = this.f5075f0;
            size = i9 > 0 ? Math.min(i9, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            size = this.f5075f0;
            if (size <= 0) {
                size = getPreferredWidth();
            }
        } else if (mode == 1073741824 && (i8 = this.f5075f0) > 0) {
            size = Math.min(i8, size);
        }
        int mode2 = View.MeasureSpec.getMode(i7);
        int size2 = View.MeasureSpec.getSize(i7);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(getPreferredHeight(), size2);
        } else if (mode2 == 0) {
            size2 = getPreferredHeight();
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    public void onQueryRefine(CharSequence charSequence) {
        setQuery(charSequence);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof T1)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        T1 t12 = (T1) parcelable;
        super.onRestoreInstanceState(t12.getSuperState());
        o(t12.f17770f);
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        T1 t12 = new T1(super.onSaveInstanceState());
        t12.f17770f = isIconified();
        return t12;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z6) {
        super.onWindowFocusChanged(z6);
        post(this.f5082m0);
    }

    public final void p(boolean z6) {
        int i2 = 8;
        if (this.f5076g0 && !isIconified() && z6) {
            this.f5050D.setVisibility(8);
            i2 = 0;
        }
        this.f5052F.setVisibility(i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i2, Rect rect) {
        if (this.f5074e0 || !isFocusable()) {
            return false;
        }
        if (isIconified()) {
            return super.requestFocus(i2, rect);
        }
        boolean requestFocus = this.f5085y.requestFocus(i2, rect);
        if (requestFocus) {
            o(false);
        }
        return requestFocus;
    }

    public void setAppSearchData(Bundle bundle) {
        this.f5081l0 = bundle;
    }

    public void setIconified(boolean z6) {
        if (z6) {
            f();
            return;
        }
        o(false);
        SearchAutoComplete searchAutoComplete = this.f5085y;
        searchAutoComplete.requestFocus();
        searchAutoComplete.setImeVisibility(true);
        View.OnClickListener onClickListener = this.f5067U;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    public void setIconifiedByDefault(boolean z6) {
        if (this.f5068V == z6) {
            return;
        }
        this.f5068V = z6;
        o(z6);
        l();
    }

    public void setImeOptions(int i2) {
        this.f5085y.setImeOptions(i2);
    }

    public void setInputType(int i2) {
        this.f5085y.setInputType(i2);
    }

    public void setMaxWidth(int i2) {
        this.f5075f0 = i2;
        requestLayout();
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.f5066T = onFocusChangeListener;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.f5067U = onClickListener;
    }

    public void setQuery(CharSequence charSequence, boolean z6) {
        SearchAutoComplete searchAutoComplete = this.f5085y;
        searchAutoComplete.setText(charSequence);
        if (charSequence != null) {
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.f5077h0 = charSequence;
        }
        if (!z6 || TextUtils.isEmpty(charSequence)) {
            return;
        }
        i();
    }

    public void setQueryHint(CharSequence charSequence) {
        this.f5072c0 = charSequence;
        l();
    }

    public void setQueryRefinementEnabled(boolean z6) {
        this.f5073d0 = z6;
        T.c cVar = this.f5070a0;
        if (cVar instanceof W1) {
            ((W1) cVar).setQueryRefinement(z6 ? 2 : 1);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0096, code lost:
    
        if (getContext().getPackageManager().resolveActivity(r0, 65536) != null) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setSearchableInfo(android.app.SearchableInfo r7) {
        /*
            r6 = this;
            r6.f5080k0 = r7
            r0 = 0
            r1 = 1
            androidx.appcompat.widget.SearchView$SearchAutoComplete r2 = r6.f5085y
            if (r7 == 0) goto L66
            int r7 = r7.getSuggestThreshold()
            r2.setThreshold(r7)
            android.app.SearchableInfo r7 = r6.f5080k0
            int r7 = r7.getImeOptions()
            r2.setImeOptions(r7)
            android.app.SearchableInfo r7 = r6.f5080k0
            int r7 = r7.getInputType()
            r3 = r7 & 15
            if (r3 != r1) goto L31
            r3 = -65537(0xfffffffffffeffff, float:NaN)
            r7 = r7 & r3
            android.app.SearchableInfo r3 = r6.f5080k0
            java.lang.String r3 = r3.getSuggestAuthority()
            if (r3 == 0) goto L31
            r3 = 589824(0x90000, float:8.2652E-40)
            r7 = r7 | r3
        L31:
            r2.setInputType(r7)
            T.c r7 = r6.f5070a0
            if (r7 == 0) goto L3b
            r7.changeCursor(r0)
        L3b:
            android.app.SearchableInfo r7 = r6.f5080k0
            java.lang.String r7 = r7.getSuggestAuthority()
            if (r7 == 0) goto L63
            l.W1 r7 = new l.W1
            android.content.Context r3 = r6.getContext()
            android.app.SearchableInfo r4 = r6.f5080k0
            java.util.WeakHashMap r5 = r6.f5084o0
            r7.<init>(r3, r6, r4, r5)
            r6.f5070a0 = r7
            r2.setAdapter(r7)
            T.c r7 = r6.f5070a0
            l.W1 r7 = (l.W1) r7
            boolean r3 = r6.f5073d0
            if (r3 == 0) goto L5f
            r3 = 2
            goto L60
        L5f:
            r3 = r1
        L60:
            r7.setQueryRefinement(r3)
        L63:
            r6.l()
        L66:
            android.app.SearchableInfo r7 = r6.f5080k0
            r3 = 0
            if (r7 == 0) goto L99
            boolean r7 = r7.getVoiceSearchEnabled()
            if (r7 == 0) goto L99
            android.app.SearchableInfo r7 = r6.f5080k0
            boolean r7 = r7.getVoiceSearchLaunchWebSearch()
            if (r7 == 0) goto L7c
            android.content.Intent r0 = r6.f5063Q
            goto L86
        L7c:
            android.app.SearchableInfo r7 = r6.f5080k0
            boolean r7 = r7.getVoiceSearchLaunchRecognizer()
            if (r7 == 0) goto L86
            android.content.Intent r0 = r6.f5064R
        L86:
            if (r0 == 0) goto L99
            android.content.Context r7 = r6.getContext()
            android.content.pm.PackageManager r7 = r7.getPackageManager()
            r4 = 65536(0x10000, float:9.18355E-41)
            android.content.pm.ResolveInfo r7 = r7.resolveActivity(r0, r4)
            if (r7 == 0) goto L99
            goto L9a
        L99:
            r1 = r3
        L9a:
            r6.f5076g0 = r1
            if (r1 == 0) goto La3
            java.lang.String r7 = "nm"
            r2.setPrivateImeOptions(r7)
        La3:
            boolean r7 = r6.isIconified()
            r6.o(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SearchView.setSearchableInfo(android.app.SearchableInfo):void");
    }

    public void setSubmitButtonEnabled(boolean z6) {
        this.f5071b0 = z6;
        o(isIconified());
    }

    public void setSuggestionsAdapter(T.c cVar) {
        this.f5070a0 = cVar;
        this.f5085y.setAdapter(cVar);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f5055I = new Rect();
        this.f5056J = new Rect();
        this.f5057K = new int[2];
        this.f5058L = new int[2];
        this.f5082m0 = new I1(this);
        this.f5083n0 = new J1(this);
        this.f5084o0 = new WeakHashMap();
        a aVar = new a(this);
        b bVar = new b(this);
        M1 m12 = new M1(this);
        N1 n12 = new N1(this);
        O1 o12 = new O1(this);
        H1 h12 = new H1(this);
        e2 obtainStyledAttributes = e2.obtainStyledAttributes(context, attributeSet, R.styleable.SearchView, i2, 0);
        AbstractC0181p0.saveAttributeDataForStyleable(this, context, R.styleable.SearchView, attributeSet, obtainStyledAttributes.getWrappedTypeArray(), i2, 0);
        LayoutInflater.from(context).inflate(obtainStyledAttributes.getResourceId(R.styleable.SearchView_layout, R.layout.abc_search_view), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(R.id.search_src_text);
        this.f5085y = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.f5086z = findViewById(R.id.search_edit_frame);
        View findViewById = findViewById(R.id.search_plate);
        this.f5047A = findViewById;
        View findViewById2 = findViewById(R.id.submit_area);
        this.f5048B = findViewById2;
        ImageView imageView = (ImageView) findViewById(R.id.search_button);
        this.f5049C = imageView;
        ImageView imageView2 = (ImageView) findViewById(R.id.search_go_btn);
        this.f5050D = imageView2;
        ImageView imageView3 = (ImageView) findViewById(R.id.search_close_btn);
        this.f5051E = imageView3;
        ImageView imageView4 = (ImageView) findViewById(R.id.search_voice_btn);
        this.f5052F = imageView4;
        ImageView imageView5 = (ImageView) findViewById(R.id.search_mag_icon);
        this.f5059M = imageView5;
        AbstractC0181p0.setBackground(findViewById, obtainStyledAttributes.getDrawable(R.styleable.SearchView_queryBackground));
        AbstractC0181p0.setBackground(findViewById2, obtainStyledAttributes.getDrawable(R.styleable.SearchView_submitBackground));
        imageView.setImageDrawable(obtainStyledAttributes.getDrawable(R.styleable.SearchView_searchIcon));
        imageView2.setImageDrawable(obtainStyledAttributes.getDrawable(R.styleable.SearchView_goIcon));
        imageView3.setImageDrawable(obtainStyledAttributes.getDrawable(R.styleable.SearchView_closeIcon));
        imageView4.setImageDrawable(obtainStyledAttributes.getDrawable(R.styleable.SearchView_voiceIcon));
        imageView5.setImageDrawable(obtainStyledAttributes.getDrawable(R.styleable.SearchView_searchIcon));
        this.f5060N = obtainStyledAttributes.getDrawable(R.styleable.SearchView_searchHintIcon);
        t2.setTooltipText(imageView, getResources().getString(R.string.abc_searchview_description_search));
        this.f5061O = obtainStyledAttributes.getResourceId(R.styleable.SearchView_suggestionRowLayout, R.layout.abc_search_dropdown_item_icons_2line);
        this.f5062P = obtainStyledAttributes.getResourceId(R.styleable.SearchView_commitIcon, 0);
        imageView.setOnClickListener(aVar);
        imageView3.setOnClickListener(aVar);
        imageView2.setOnClickListener(aVar);
        imageView4.setOnClickListener(aVar);
        searchAutoComplete.setOnClickListener(aVar);
        searchAutoComplete.addTextChangedListener(h12);
        searchAutoComplete.setOnEditorActionListener(m12);
        searchAutoComplete.setOnItemClickListener(n12);
        searchAutoComplete.setOnItemSelectedListener(o12);
        searchAutoComplete.setOnKeyListener(bVar);
        searchAutoComplete.setOnFocusChangeListener(new K1(this));
        setIconifiedByDefault(obtainStyledAttributes.getBoolean(R.styleable.SearchView_iconifiedByDefault, true));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.SearchView_android_maxWidth, -1);
        if (dimensionPixelSize != -1) {
            setMaxWidth(dimensionPixelSize);
        }
        this.f5065S = obtainStyledAttributes.getText(R.styleable.SearchView_defaultQueryHint);
        this.f5072c0 = obtainStyledAttributes.getText(R.styleable.SearchView_queryHint);
        int i7 = obtainStyledAttributes.getInt(R.styleable.SearchView_android_imeOptions, -1);
        if (i7 != -1) {
            setImeOptions(i7);
        }
        int i8 = obtainStyledAttributes.getInt(R.styleable.SearchView_android_inputType, -1);
        if (i8 != -1) {
            setInputType(i8);
        }
        setFocusable(obtainStyledAttributes.getBoolean(R.styleable.SearchView_android_focusable, true));
        obtainStyledAttributes.recycle();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.f5063Q = intent;
        intent.addFlags(268435456);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.f5064R = intent2;
        intent2.addFlags(268435456);
        View findViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.f5053G = findViewById3;
        if (findViewById3 != null) {
            findViewById3.addOnLayoutChangeListener(new L1(this));
        }
        o(this.f5068V);
        l();
    }

    private void setQuery(CharSequence charSequence) {
        SearchAutoComplete searchAutoComplete = this.f5085y;
        searchAutoComplete.setText(charSequence);
        searchAutoComplete.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    public void setOnCloseListener(P1 p12) {
    }

    public void setOnQueryTextListener(Q1 q12) {
    }

    public void setOnSuggestionListener(R1 r12) {
    }
}
