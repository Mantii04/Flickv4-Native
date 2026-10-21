package androidx.leanback.widget;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.media.SoundPool;
import android.os.Handler;
import android.speech.SpeechRecognizer;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.RelativeLayout;

/* loaded from: classes.dex */
public class SearchBar extends RelativeLayout {

    /* renamed from: G, reason: collision with root package name */
    public static final /* synthetic */ int f6671G = 0;

    /* renamed from: A, reason: collision with root package name */
    public SpeechRecognizer f6672A;

    /* renamed from: B, reason: collision with root package name */
    public boolean f6673B;

    /* renamed from: C, reason: collision with root package name */
    public SoundPool f6674C;

    /* renamed from: D, reason: collision with root package name */
    public final SparseIntArray f6675D;

    /* renamed from: E, reason: collision with root package name */
    public boolean f6676E;

    /* renamed from: F, reason: collision with root package name */
    public final Context f6677F;

    /* renamed from: b, reason: collision with root package name */
    public SearchEditText f6678b;

    /* renamed from: e, reason: collision with root package name */
    public SpeechOrbView f6679e;

    /* renamed from: f, reason: collision with root package name */
    public ImageView f6680f;

    /* renamed from: j, reason: collision with root package name */
    public String f6681j;

    /* renamed from: m, reason: collision with root package name */
    public String f6682m;

    /* renamed from: n, reason: collision with root package name */
    public String f6683n;

    /* renamed from: p, reason: collision with root package name */
    public Drawable f6684p;

    /* renamed from: q, reason: collision with root package name */
    public final Handler f6685q;

    /* renamed from: r, reason: collision with root package name */
    public final InputMethodManager f6686r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f6687s;

    /* renamed from: t, reason: collision with root package name */
    public Drawable f6688t;

    /* renamed from: u, reason: collision with root package name */
    public final int f6689u;

    /* renamed from: v, reason: collision with root package name */
    public final int f6690v;

    /* renamed from: w, reason: collision with root package name */
    public final int f6691w;

    /* renamed from: x, reason: collision with root package name */
    public final int f6692x;

    /* renamed from: y, reason: collision with root package name */
    public final int f6693y;

    /* renamed from: z, reason: collision with root package name */
    public final int f6694z;

    public SearchBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final void a() {
        String string = getResources().getString(androidx.leanback.R.string.lb_search_bar_hint);
        if (!TextUtils.isEmpty(this.f6683n)) {
            string = this.f6679e.isFocused() ? getResources().getString(androidx.leanback.R.string.lb_search_bar_hint_with_title_speech, this.f6683n) : getResources().getString(androidx.leanback.R.string.lb_search_bar_hint_with_title, this.f6683n);
        } else if (this.f6679e.isFocused()) {
            string = getResources().getString(androidx.leanback.R.string.lb_search_bar_hint_speech);
        }
        this.f6682m = string;
        SearchEditText searchEditText = this.f6678b;
        if (searchEditText != null) {
            searchEditText.setHint(string);
        }
    }

    public final void b(boolean z6) {
        if (z6) {
            this.f6688t.setAlpha(this.f6694z);
            boolean isFocused = this.f6679e.isFocused();
            int i2 = this.f6692x;
            if (isFocused) {
                this.f6678b.setTextColor(i2);
                this.f6678b.setHintTextColor(i2);
            } else {
                this.f6678b.setTextColor(this.f6690v);
                this.f6678b.setHintTextColor(i2);
            }
        } else {
            this.f6688t.setAlpha(this.f6693y);
            this.f6678b.setTextColor(this.f6689u);
            this.f6678b.setHintTextColor(this.f6691w);
        }
        a();
    }

    public Drawable getBadgeDrawable() {
        return this.f6684p;
    }

    public CharSequence getHint() {
        return this.f6682m;
    }

    public String getTitle() {
        return this.f6683n;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f6674C = new SoundPool(2, 1, 0);
        int[] iArr = {androidx.leanback.R.raw.lb_voice_failure, androidx.leanback.R.raw.lb_voice_open, androidx.leanback.R.raw.lb_voice_no_input, androidx.leanback.R.raw.lb_voice_success};
        for (int i2 = 0; i2 < 4; i2++) {
            int i7 = iArr[i2];
            this.f6675D.put(i7, this.f6674C.load(this.f6677F, i7, 1));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        stopRecognition();
        this.f6674C.release();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f6688t = ((RelativeLayout) findViewById(androidx.leanback.R.id.lb_search_bar_items)).getBackground();
        this.f6678b = (SearchEditText) findViewById(androidx.leanback.R.id.lb_search_text_editor);
        ImageView imageView = (ImageView) findViewById(androidx.leanback.R.id.lb_search_bar_badge);
        this.f6680f = imageView;
        Drawable drawable = this.f6684p;
        if (drawable != null) {
            imageView.setImageDrawable(drawable);
        }
        this.f6678b.setOnFocusChangeListener(new P0(this));
        this.f6678b.addTextChangedListener(new R0(this, new Q0(this)));
        this.f6678b.setOnKeyboardDismissListener(new S0(this));
        this.f6678b.setOnEditorActionListener(new U0(this));
        this.f6678b.setPrivateImeOptions("escapeNorth,voiceDismiss");
        SpeechOrbView speechOrbView = (SpeechOrbView) findViewById(androidx.leanback.R.id.lb_search_bar_speech_orb);
        this.f6679e = speechOrbView;
        speechOrbView.setOnOrbClickedListener(new V0(this));
        this.f6679e.setOnFocusChangeListener(new W0(this));
        b(hasFocus());
        a();
    }

    public void setBadgeDrawable(Drawable drawable) {
        this.f6684p = drawable;
        ImageView imageView = this.f6680f;
        if (imageView != null) {
            imageView.setImageDrawable(drawable);
            if (drawable != null) {
                this.f6680f.setVisibility(0);
            } else {
                this.f6680f.setVisibility(8);
            }
        }
    }

    @Override // android.view.View
    public void setNextFocusDownId(int i2) {
        this.f6679e.setNextFocusDownId(i2);
        this.f6678b.setNextFocusDownId(i2);
    }

    public void setPermissionListener(InterfaceC0490a1 interfaceC0490a1) {
    }

    public void setSearchAffordanceColors(e1 e1Var) {
        SpeechOrbView speechOrbView = this.f6679e;
        if (speechOrbView != null) {
            speechOrbView.setNotListeningOrbColors(e1Var);
        }
    }

    public void setSearchAffordanceColorsInListening(e1 e1Var) {
        SpeechOrbView speechOrbView = this.f6679e;
        if (speechOrbView != null) {
            speechOrbView.setListeningOrbColors(e1Var);
        }
    }

    public void setSearchBarListener(Z0 z02) {
    }

    public void setSearchQuery(String str) {
        stopRecognition();
        this.f6678b.setText(str);
        setSearchQueryInternal(str);
    }

    public void setSearchQueryInternal(String str) {
        if (TextUtils.equals(this.f6681j, str)) {
            return;
        }
        this.f6681j = str;
    }

    @Deprecated
    public void setSpeechRecognitionCallback(p1 p1Var) {
    }

    public void setSpeechRecognizer(SpeechRecognizer speechRecognizer) {
        stopRecognition();
        SpeechRecognizer speechRecognizer2 = this.f6672A;
        if (speechRecognizer2 != null) {
            speechRecognizer2.setRecognitionListener(null);
            if (this.f6673B) {
                this.f6672A.cancel();
                this.f6673B = false;
            }
        }
        this.f6672A = speechRecognizer;
    }

    public void setTitle(String str) {
        this.f6683n = str;
        a();
    }

    public void startRecognition() {
        if (this.f6676E) {
            return;
        }
        if (!hasFocus()) {
            requestFocus();
        }
        if (this.f6672A == null) {
            return;
        }
        if (getContext().checkCallingOrSelfPermission("android.permission.RECORD_AUDIO") != 0) {
            throw new IllegalStateException("android.permission.RECORD_AUDIO required for search");
        }
        this.f6676E = true;
        this.f6678b.setText("");
        Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
        intent.putExtra("android.speech.extra.PARTIAL_RESULTS", true);
        this.f6672A.setRecognitionListener(new Y0(this));
        this.f6673B = true;
        this.f6672A.startListening(intent);
    }

    public void stopRecognition() {
        if (this.f6676E) {
            this.f6678b.setText(this.f6681j);
            this.f6678b.setHint(this.f6682m);
            this.f6676E = false;
            if (this.f6672A == null) {
                return;
            }
            this.f6679e.showNotListening();
            if (this.f6673B) {
                this.f6672A.cancel();
                this.f6673B = false;
            }
            this.f6672A.setRecognitionListener(null);
        }
    }

    public SearchBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f6685q = new Handler();
        this.f6687s = false;
        this.f6675D = new SparseIntArray();
        this.f6676E = false;
        this.f6677F = context;
        Resources resources = getResources();
        LayoutInflater.from(getContext()).inflate(androidx.leanback.R.layout.lb_search_bar, (ViewGroup) this, true);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, getResources().getDimensionPixelSize(androidx.leanback.R.dimen.lb_search_bar_height));
        layoutParams.addRule(10, -1);
        setLayoutParams(layoutParams);
        setBackgroundColor(0);
        setClipChildren(false);
        this.f6681j = "";
        this.f6686r = (InputMethodManager) context.getSystemService("input_method");
        this.f6690v = resources.getColor(androidx.leanback.R.color.lb_search_bar_text_speech_mode);
        this.f6689u = resources.getColor(androidx.leanback.R.color.lb_search_bar_text);
        this.f6694z = resources.getInteger(androidx.leanback.R.integer.lb_search_bar_speech_mode_background_alpha);
        this.f6693y = resources.getInteger(androidx.leanback.R.integer.lb_search_bar_text_mode_background_alpha);
        this.f6692x = resources.getColor(androidx.leanback.R.color.lb_search_bar_hint_speech_mode);
        this.f6691w = resources.getColor(androidx.leanback.R.color.lb_search_bar_hint);
    }
}
