package flix.com.vision.materialsearchview;

import A.h;
import A.i;
import M.AbstractC0181p0;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.CursorAdapter;
import android.widget.EditText;
import android.widget.FilterQueryProvider;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.R;
import e.AbstractC0813A;
import flix.com.vision.materialsearchview.adapters.CursorSearchAdapter;
import flix.com.vision.materialsearchview.db.HistoryContract;
import flix.com.vision.materialsearchview.utils.AnimationUtils;
import flix.com.vision.subtitles.OpenSubtitles;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class MaterialSearchView extends FrameLayout {

    /* renamed from: D, reason: collision with root package name */
    public static int f16021D = 10;

    /* renamed from: A, reason: collision with root package name */
    public OnQueryTextListener f16022A;

    /* renamed from: B, reason: collision with root package name */
    public SearchViewListener f16023B;

    /* renamed from: C, reason: collision with root package name */
    public OnVoiceClickedListener f16024C;

    /* renamed from: b, reason: collision with root package name */
    public boolean f16025b;

    /* renamed from: e, reason: collision with root package name */
    public final Context f16026e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f16027f;

    /* renamed from: j, reason: collision with root package name */
    public boolean f16028j;

    /* renamed from: m, reason: collision with root package name */
    public boolean f16029m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f16030n;

    /* renamed from: p, reason: collision with root package name */
    public String f16031p;

    /* renamed from: q, reason: collision with root package name */
    public final View f16032q;

    /* renamed from: r, reason: collision with root package name */
    public final FrameLayout f16033r;

    /* renamed from: s, reason: collision with root package name */
    public final LinearLayout f16034s;

    /* renamed from: t, reason: collision with root package name */
    public final EditText f16035t;

    /* renamed from: u, reason: collision with root package name */
    public final ImageButton f16036u;

    /* renamed from: v, reason: collision with root package name */
    public final ImageButton f16037v;

    /* renamed from: w, reason: collision with root package name */
    public final ImageButton f16038w;

    /* renamed from: x, reason: collision with root package name */
    public final ListView f16039x;

    /* renamed from: y, reason: collision with root package name */
    public final CursorSearchAdapter f16040y;

    /* renamed from: z, reason: collision with root package name */
    public Editable f16041z;

    public interface OnQueryTextListener {
        boolean onQueryTextChange(String str);

        boolean onQueryTextSubmit(String str);
    }

    public interface OnVoiceClickedListener {
        void onVoiceClicked();
    }

    public interface SearchViewListener {
        void onSearchViewClosed();

        void onSearchViewOpened();
    }

    public MaterialSearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private int getAppCompatActionBarHeight() {
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true);
        return getResources().getDimensionPixelSize(typedValue.resourceId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Cursor getHistoryCursor() {
        return this.f16026e.getContentResolver().query(HistoryContract.HistoryEntry.f16054a, null, "is_history = ?", new String[]{"1"}, "insert_date DESC LIMIT " + f16021D);
    }

    public static void setMaxHistoryResults(int i2) {
        f16021D = i2;
    }

    private void setTintColor(int i2) {
        this.f16032q.setBackgroundColor(i2);
    }

    public void activityResumed() {
        c();
    }

    public synchronized void addSuggestions(List<String> list) {
        try {
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                ContentValues contentValues = new ContentValues();
                contentValues.put(OpenSubtitles.Params.Key.QUERY, str);
                contentValues.put("insert_date", Long.valueOf(System.currentTimeMillis()));
                contentValues.put("is_history", (Integer) 0);
                arrayList.add(contentValues);
            }
            this.f16026e.getContentResolver().bulkInsert(HistoryContract.HistoryEntry.f16054a, (ContentValues[]) arrayList.toArray(new ContentValues[arrayList.size()]));
        } catch (Throwable th) {
            throw th;
        }
    }

    public void adjustTintAlpha(float f3) {
        if (f3 < 0.0f || f3 > 1.0d) {
            return;
        }
        Drawable background = this.f16032q.getBackground();
        if (background instanceof ColorDrawable) {
            int color = ((ColorDrawable) background).getColor();
            if (f3 >= 0.0f) {
                color = Color.argb(Math.round(Color.alpha(color) * f3), Color.red(color), Color.green(color), Color.blue(color));
            }
            this.f16032q.setBackgroundColor(color);
        }
    }

    public final void b(boolean z6) {
        if (!z6 || this.f16026e.getPackageManager().queryIntentActivities(new Intent("android.speech.action.RECOGNIZE_SPEECH"), 0).size() <= 0) {
            this.f16037v.setVisibility(8);
        } else {
            this.f16037v.setVisibility(0);
        }
    }

    public final void c() {
        this.f16040y.changeCursor(getHistoryCursor());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.f16030n = true;
        ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(getWindowToken(), 0);
        super.clearFocus();
        this.f16035t.clearFocus();
        this.f16030n = false;
    }

    public synchronized void clearHistory() {
        this.f16026e.getContentResolver().delete(HistoryContract.HistoryEntry.f16054a, "is_history = ?", new String[]{"1"});
    }

    public synchronized void clearSuggestions() {
        this.f16026e.getContentResolver().delete(HistoryContract.HistoryEntry.f16054a, "is_history = ?", new String[]{"0"});
    }

    public void closeSearch() {
        if (this.f16025b) {
            this.f16035t.setText("");
            this.f16039x.setVisibility(8);
            clearFocus();
            if (this.f16027f) {
                final FrameLayout frameLayout = this.f16033r;
                AnimationUtils.circleHideView(this.f16034s, new AnimatorListenerAdapter() { // from class: flix.com.vision.materialsearchview.MaterialSearchView.9
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        frameLayout.setVisibility(8);
                    }
                });
            } else {
                this.f16033r.setVisibility(8);
            }
            SearchViewListener searchViewListener = this.f16023B;
            if (searchViewListener != null) {
                searchViewListener.onSearchViewClosed();
            }
            this.f16025b = false;
        }
    }

    public CursorAdapter getAdapter() {
        return this.f16040y;
    }

    public String getCurrentQuery() {
        return !TextUtils.isEmpty(this.f16041z) ? this.f16041z.toString() : "";
    }

    public String getSuggestionAtPosition(int i2) {
        return (i2 < 0 || i2 >= this.f16040y.getCount()) ? "" : this.f16040y.getItem(i2).toString();
    }

    public boolean isOpen() {
        return this.f16025b;
    }

    public void openSearch() {
        if (this.f16025b) {
            return;
        }
        this.f16035t.setText("");
        this.f16035t.requestFocus();
        if (this.f16027f) {
            this.f16033r.setVisibility(0);
            AnimationUtils.circleRevealView(this.f16034s);
        } else {
            this.f16033r.setVisibility(0);
        }
        SearchViewListener searchViewListener = this.f16023B;
        if (searchViewListener != null) {
            searchViewListener.onSearchViewOpened();
        }
        this.f16025b = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i2, Rect rect) {
        return !this.f16030n && isFocusable() && this.f16035t.requestFocus(i2, rect);
    }

    public synchronized void saveQueryToDb(String str, long j7) {
        if (!TextUtils.isEmpty(str) && j7 > 0) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(OpenSubtitles.Params.Key.QUERY, str);
            contentValues.put("insert_date", Long.valueOf(j7));
            contentValues.put("is_history", (Integer) 1);
            this.f16026e.getContentResolver().insert(HistoryContract.HistoryEntry.f16054a, contentValues);
        }
    }

    public void setBackIcon(int i2) {
        this.f16036u.setImageResource(i2);
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        this.f16032q.setBackground(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        setTintColor(i2);
    }

    public void setClearIcon(int i2) {
        this.f16038w.setImageResource(i2);
    }

    public void setCloseOnTintClick(boolean z6) {
        this.f16028j = z6;
    }

    public void setHint(CharSequence charSequence) {
        this.f16035t.setHint(charSequence);
    }

    public void setHintTextColor(int i2) {
        this.f16035t.setHintTextColor(i2);
    }

    public void setInputType(int i2) {
        this.f16035t.setInputType(i2);
    }

    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.f16039x.setOnItemClickListener(onItemClickListener);
    }

    public void setOnItemLongClickListener(AdapterView.OnItemLongClickListener onItemLongClickListener) {
        this.f16039x.setOnItemLongClickListener(onItemLongClickListener);
    }

    public void setOnQueryTextListener(OnQueryTextListener onQueryTextListener) {
        this.f16022A = onQueryTextListener;
    }

    public void setOnVoiceClickedListener(OnVoiceClickedListener onVoiceClickedListener) {
        this.f16024C = onVoiceClickedListener;
    }

    public void setSearchBarColor(int i2) {
        this.f16035t.setBackgroundColor(i2);
    }

    public void setSearchBarHeight(int i2) {
        this.f16034s.setMinimumHeight(i2);
        this.f16034s.getLayoutParams().height = i2;
    }

    public void setSearchViewListener(SearchViewListener searchViewListener) {
        this.f16023B = searchViewListener;
    }

    public void setShouldAnimate(boolean z6) {
        this.f16027f = z6;
    }

    public void setShouldKeepHistory(boolean z6) {
        this.f16029m = z6;
    }

    public void setSuggestionBackground(int i2) {
        if (i2 > 0) {
            this.f16039x.setBackgroundResource(i2);
        }
    }

    public void setTextColor(int i2) {
        this.f16035t.setTextColor(i2);
    }

    public void setTintAlpha(int i2) {
        if (i2 < 0 || i2 > 255) {
            return;
        }
        Drawable background = this.f16032q.getBackground();
        if (background instanceof ColorDrawable) {
            int color = ((ColorDrawable) background).getColor();
            setTintColor(Color.argb(i2, Color.red(color), Color.green(color), Color.blue(color)));
        }
    }

    public void setVoiceHintPrompt(String str) {
        if (TextUtils.isEmpty(str)) {
            this.f16031p = this.f16026e.getString(flix.com.vision.R.string.hint_prompt);
        } else {
            this.f16031p = str;
        }
    }

    public void setVoiceIcon(int i2) {
        this.f16037v.setImageResource(i2);
    }

    public MaterialSearchView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet);
        this.f16026e = context;
        this.f16027f = true;
        this.f16029m = true;
        LayoutInflater.from(context).inflate(flix.com.vision.R.layout.search_view, (ViewGroup) this, true);
        FrameLayout frameLayout = (FrameLayout) findViewById(flix.com.vision.R.id.search_layout);
        this.f16033r = frameLayout;
        this.f16032q = frameLayout.findViewById(flix.com.vision.R.id.transparent_view);
        this.f16034s = (LinearLayout) this.f16033r.findViewById(flix.com.vision.R.id.search_bar);
        this.f16036u = (ImageButton) this.f16033r.findViewById(flix.com.vision.R.id.action_back);
        this.f16035t = (EditText) this.f16033r.findViewById(flix.com.vision.R.id.et_search);
        this.f16037v = (ImageButton) this.f16033r.findViewById(flix.com.vision.R.id.action_voice);
        this.f16038w = (ImageButton) this.f16033r.findViewById(flix.com.vision.R.id.action_clear);
        this.f16039x = (ListView) this.f16033r.findViewById(flix.com.vision.R.id.suggestion_list);
        this.f16036u.setOnClickListener(new View.OnClickListener() { // from class: flix.com.vision.materialsearchview.MaterialSearchView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MaterialSearchView.this.closeSearch();
            }
        });
        this.f16037v.setOnClickListener(new View.OnClickListener() { // from class: flix.com.vision.materialsearchview.MaterialSearchView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MaterialSearchView materialSearchView = MaterialSearchView.this;
                OnVoiceClickedListener onVoiceClickedListener = materialSearchView.f16024C;
                if (onVoiceClickedListener != null) {
                    onVoiceClickedListener.onVoiceClicked();
                    return;
                }
                Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
                intent.putExtra("android.speech.extra.PROMPT", materialSearchView.f16031p);
                intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
                intent.putExtra("android.speech.extra.MAX_RESULTS", 1);
                Context context2 = materialSearchView.f16026e;
                if (context2 instanceof Activity) {
                    ((Activity) context2).startActivityForResult(intent, 42);
                }
            }
        });
        this.f16038w.setOnClickListener(new View.OnClickListener() { // from class: flix.com.vision.materialsearchview.MaterialSearchView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MaterialSearchView.this.f16035t.setText("");
            }
        });
        this.f16032q.setOnClickListener(new View.OnClickListener() { // from class: flix.com.vision.materialsearchview.MaterialSearchView.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MaterialSearchView materialSearchView = MaterialSearchView.this;
                if (materialSearchView.f16028j) {
                    materialSearchView.closeSearch();
                }
            }
        });
        b(true);
        this.f16035t.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: flix.com.vision.materialsearchview.MaterialSearchView.6
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i7, KeyEvent keyEvent) {
                MaterialSearchView materialSearchView = MaterialSearchView.this;
                Editable text = materialSearchView.f16035t.getText();
                if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
                    return true;
                }
                OnQueryTextListener onQueryTextListener = materialSearchView.f16022A;
                if (onQueryTextListener != null && onQueryTextListener.onQueryTextSubmit(text.toString())) {
                    return true;
                }
                if (materialSearchView.f16029m) {
                    materialSearchView.saveQueryToDb(text.toString(), System.currentTimeMillis());
                }
                materialSearchView.c();
                materialSearchView.closeSearch();
                materialSearchView.f16035t.setText("");
                return true;
            }
        });
        this.f16035t.addTextChangedListener(new TextWatcher() { // from class: flix.com.vision.materialsearchview.MaterialSearchView.7
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i7, int i8, int i9) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i7, int i8, int i9) {
                MaterialSearchView materialSearchView = MaterialSearchView.this;
                materialSearchView.f16040y.getFilter().filter(charSequence.toString());
                materialSearchView.f16040y.notifyDataSetChanged();
                Editable text = materialSearchView.f16035t.getText();
                materialSearchView.f16041z = text;
                if (TextUtils.isEmpty(text)) {
                    materialSearchView.f16038w.setVisibility(8);
                    materialSearchView.b(true);
                } else {
                    materialSearchView.b(false);
                    materialSearchView.f16038w.setVisibility(0);
                }
                OnQueryTextListener onQueryTextListener = materialSearchView.f16022A;
                if (onQueryTextListener != null) {
                    onQueryTextListener.onQueryTextChange(charSequence.toString());
                }
            }
        });
        this.f16035t.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: flix.com.vision.materialsearchview.MaterialSearchView.8
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z6) {
                if (z6) {
                    MaterialSearchView materialSearchView = MaterialSearchView.this;
                    EditText editText = materialSearchView.f16035t;
                    materialSearchView.getClass();
                    editText.requestFocus();
                    if (materialSearchView.f16026e.getResources().getConfiguration().keyboard == 1) {
                        ((InputMethodManager) editText.getContext().getSystemService("input_method")).showSoftInput(editText, 0);
                    }
                    materialSearchView.f16039x.setVisibility(0);
                }
            }
        });
        CursorSearchAdapter cursorSearchAdapter = new CursorSearchAdapter(context, getHistoryCursor());
        this.f16040y = cursorSearchAdapter;
        cursorSearchAdapter.setFilterQueryProvider(new FilterQueryProvider() { // from class: flix.com.vision.materialsearchview.MaterialSearchView.5
            @Override // android.widget.FilterQueryProvider
            public Cursor runQuery(CharSequence charSequence) {
                String charSequence2 = charSequence.toString();
                boolean isEmpty = charSequence2.isEmpty();
                MaterialSearchView materialSearchView = MaterialSearchView.this;
                return isEmpty ? materialSearchView.getHistoryCursor() : materialSearchView.f16026e.getContentResolver().query(HistoryContract.HistoryEntry.f16054a, null, "query LIKE ?", new String[]{i.l("%", charSequence2, "%")}, "is_history DESC, query");
            }
        });
        this.f16039x.setAdapter((ListAdapter) this.f16040y);
        this.f16039x.setTextFilterEnabled(true);
        AbstractC0813A.setCompatVectorFromResourcesEnabled(true);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, flix.com.vision.R.styleable.MaterialSearchView, i2, 0);
        if (obtainStyledAttributes != null) {
            if (obtainStyledAttributes.hasValue(flix.com.vision.R.styleable.MaterialSearchView_searchBackground)) {
                setBackground(obtainStyledAttributes.getDrawable(flix.com.vision.R.styleable.MaterialSearchView_searchBackground));
            }
            if (obtainStyledAttributes.hasValue(flix.com.vision.R.styleable.MaterialSearchView_android_textColor)) {
                setTextColor(obtainStyledAttributes.getColor(flix.com.vision.R.styleable.MaterialSearchView_android_textColor, h.getColor(context, flix.com.vision.R.color.black)));
            }
            if (obtainStyledAttributes.hasValue(flix.com.vision.R.styleable.MaterialSearchView_android_textColorHint)) {
                setHintTextColor(obtainStyledAttributes.getColor(flix.com.vision.R.styleable.MaterialSearchView_android_textColorHint, h.getColor(context, flix.com.vision.R.color.gray_50)));
            }
            if (obtainStyledAttributes.hasValue(flix.com.vision.R.styleable.MaterialSearchView_android_hint)) {
                setHint(obtainStyledAttributes.getString(flix.com.vision.R.styleable.MaterialSearchView_android_hint));
            }
            if (obtainStyledAttributes.hasValue(flix.com.vision.R.styleable.MaterialSearchView_searchVoiceIcon)) {
                setVoiceIcon(obtainStyledAttributes.getResourceId(flix.com.vision.R.styleable.MaterialSearchView_searchVoiceIcon, flix.com.vision.R.drawable.ic_action_voice_search));
            }
            if (obtainStyledAttributes.hasValue(flix.com.vision.R.styleable.MaterialSearchView_searchCloseIcon)) {
                setClearIcon(obtainStyledAttributes.getResourceId(flix.com.vision.R.styleable.MaterialSearchView_searchCloseIcon, flix.com.vision.R.drawable.ic_action_navigation_close));
            }
            if (obtainStyledAttributes.hasValue(flix.com.vision.R.styleable.MaterialSearchView_searchBackIcon)) {
                setBackIcon(obtainStyledAttributes.getResourceId(flix.com.vision.R.styleable.MaterialSearchView_searchBackIcon, flix.com.vision.R.drawable.ic_action_navigation_arrow_back));
            }
            if (obtainStyledAttributes.hasValue(flix.com.vision.R.styleable.MaterialSearchView_searchSuggestionBackground)) {
                setSuggestionBackground(obtainStyledAttributes.getResourceId(flix.com.vision.R.styleable.MaterialSearchView_searchSuggestionBackground, flix.com.vision.R.color.search_layover_bg));
            }
            if (obtainStyledAttributes.hasValue(flix.com.vision.R.styleable.MaterialSearchView_android_inputType)) {
                setInputType(obtainStyledAttributes.getInteger(flix.com.vision.R.styleable.MaterialSearchView_android_inputType, 1));
            }
            if (obtainStyledAttributes.hasValue(flix.com.vision.R.styleable.MaterialSearchView_searchBarHeight)) {
                setSearchBarHeight(obtainStyledAttributes.getDimensionPixelSize(flix.com.vision.R.styleable.MaterialSearchView_searchBarHeight, getAppCompatActionBarHeight()));
            } else {
                setSearchBarHeight(getAppCompatActionBarHeight());
            }
            if (obtainStyledAttributes.hasValue(flix.com.vision.R.styleable.MaterialSearchView_voiceHintPrompt)) {
                setVoiceHintPrompt(obtainStyledAttributes.getString(flix.com.vision.R.styleable.MaterialSearchView_voiceHintPrompt));
            } else {
                setVoiceHintPrompt(context.getString(flix.com.vision.R.string.hint_prompt));
            }
            AbstractC0181p0.setFitsSystemWindows(this, obtainStyledAttributes.getBoolean(flix.com.vision.R.styleable.MaterialSearchView_android_fitsSystemWindows, false));
            obtainStyledAttributes.recycle();
        }
    }
}
