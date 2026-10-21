package l;

import android.app.SearchableInfo;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.R;
import androidx.appcompat.widget.SearchView;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.FileNotFoundException;
import java.util.List;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class W1 extends T.e implements View.OnClickListener {

    /* renamed from: A, reason: collision with root package name */
    public ColorStateList f17804A;

    /* renamed from: B, reason: collision with root package name */
    public int f17805B;

    /* renamed from: C, reason: collision with root package name */
    public int f17806C;

    /* renamed from: D, reason: collision with root package name */
    public int f17807D;

    /* renamed from: E, reason: collision with root package name */
    public int f17808E;

    /* renamed from: F, reason: collision with root package name */
    public int f17809F;

    /* renamed from: G, reason: collision with root package name */
    public int f17810G;

    /* renamed from: u, reason: collision with root package name */
    public final SearchView f17811u;

    /* renamed from: v, reason: collision with root package name */
    public final SearchableInfo f17812v;

    /* renamed from: w, reason: collision with root package name */
    public final Context f17813w;

    /* renamed from: x, reason: collision with root package name */
    public final WeakHashMap f17814x;

    /* renamed from: y, reason: collision with root package name */
    public final int f17815y;

    /* renamed from: z, reason: collision with root package name */
    public int f17816z;

    public W1(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap<String, Drawable.ConstantState> weakHashMap) {
        super(context, searchView.getSuggestionRowLayout(), null, true);
        this.f17816z = 1;
        this.f17805B = -1;
        this.f17806C = -1;
        this.f17807D = -1;
        this.f17808E = -1;
        this.f17809F = -1;
        this.f17810G = -1;
        this.f17811u = searchView;
        this.f17812v = searchableInfo;
        this.f17815y = searchView.getSuggestionCommitIconResId();
        this.f17813w = context;
        this.f17814x = weakHashMap;
    }

    public static String d(Cursor cursor, int i2) {
        if (i2 == -1) {
            return null;
        }
        try {
            return cursor.getString(i2);
        } catch (Exception e3) {
            Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", e3);
            return null;
        }
    }

    public static String getColumnString(Cursor cursor, String str) {
        return d(cursor, cursor.getColumnIndex(str));
    }

    public final Drawable a(Uri uri) {
        int parseInt;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new FileNotFoundException(b.c.k("No authority: ", uri));
        }
        try {
            Resources resourcesForApplication = this.f17813w.getPackageManager().getResourcesForApplication(authority);
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments == null) {
                throw new FileNotFoundException(b.c.k("No path: ", uri));
            }
            int size = pathSegments.size();
            if (size == 1) {
                try {
                    parseInt = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException unused) {
                    throw new FileNotFoundException(b.c.k("Single path segment is not a resource ID: ", uri));
                }
            } else {
                if (size != 2) {
                    throw new FileNotFoundException(b.c.k("More than two path segments: ", uri));
                }
                parseInt = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
            }
            if (parseInt != 0) {
                return resourcesForApplication.getDrawable(parseInt);
            }
            throw new FileNotFoundException(b.c.k("No resource found for: ", uri));
        } catch (PackageManager.NameNotFoundException unused2) {
            throw new FileNotFoundException(b.c.k("No package found for authority: ", uri));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x010c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.drawable.Drawable b(java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: l.W1.b(java.lang.String):android.graphics.drawable.Drawable");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:55:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0130  */
    @Override // T.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void bindView(android.view.View r21, android.content.Context r22, android.database.Cursor r23) {
        /*
            Method dump skipped, instructions count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: l.W1.bindView(android.view.View, android.content.Context, android.database.Cursor):void");
    }

    public final Cursor c(SearchableInfo searchableInfo, String str) {
        String suggestAuthority;
        String[] strArr = null;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
        Uri.Builder fragment = new Uri.Builder().scheme(FirebaseAnalytics.Param.CONTENT).authority(suggestAuthority).query("").fragment("");
        String suggestPath = searchableInfo.getSuggestPath();
        if (suggestPath != null) {
            fragment.appendEncodedPath(suggestPath);
        }
        fragment.appendPath("search_suggest_query");
        String suggestSelection = searchableInfo.getSuggestSelection();
        if (suggestSelection != null) {
            strArr = new String[]{str};
        } else {
            fragment.appendPath(str);
        }
        String[] strArr2 = strArr;
        fragment.appendQueryParameter("limit", String.valueOf(50));
        return this.f17813w.getContentResolver().query(fragment.build(), null, suggestSelection, strArr2, null);
    }

    @Override // T.c
    public void changeCursor(Cursor cursor) {
        try {
            super.changeCursor(cursor);
            if (cursor != null) {
                this.f17805B = cursor.getColumnIndex("suggest_text_1");
                this.f17806C = cursor.getColumnIndex("suggest_text_2");
                this.f17807D = cursor.getColumnIndex("suggest_text_2_url");
                this.f17808E = cursor.getColumnIndex("suggest_icon_1");
                this.f17809F = cursor.getColumnIndex("suggest_icon_2");
                this.f17810G = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception e3) {
            Log.e("SuggestionsAdapter", "error changing cursor and caching columns", e3);
        }
    }

    @Override // T.c
    public CharSequence convertToString(Cursor cursor) {
        String columnString;
        String columnString2;
        if (cursor == null) {
            return null;
        }
        String columnString3 = getColumnString(cursor, "suggest_intent_query");
        if (columnString3 != null) {
            return columnString3;
        }
        SearchableInfo searchableInfo = this.f17812v;
        if (searchableInfo.shouldRewriteQueryFromData() && (columnString2 = getColumnString(cursor, "suggest_intent_data")) != null) {
            return columnString2;
        }
        if (!searchableInfo.shouldRewriteQueryFromText() || (columnString = getColumnString(cursor, "suggest_text_1")) == null) {
            return null;
        }
        return columnString;
    }

    @Override // T.c, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i2, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i2, view, viewGroup);
        } catch (RuntimeException e3) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e3);
            View newDropDownView = newDropDownView(this.f17813w, getCursor(), viewGroup);
            if (newDropDownView != null) {
                ((V1) newDropDownView.getTag()).f17786a.setText(e3.toString());
            }
            return newDropDownView;
        }
    }

    @Override // T.c, android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i2, view, viewGroup);
        } catch (RuntimeException e3) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e3);
            View newView = newView(this.f17813w, getCursor(), viewGroup);
            if (newView != null) {
                ((V1) newView.getTag()).f17786a.setText(e3.toString());
            }
            return newView;
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    @Override // T.e, T.c
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        View newView = super.newView(context, cursor, viewGroup);
        newView.setTag(new V1(newView));
        ((ImageView) newView.findViewById(R.id.edit_query)).setImageResource(this.f17815y);
        return newView;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        Cursor cursor = getCursor();
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras != null) {
            extras.getBoolean("in_progress");
        }
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        Cursor cursor = getCursor();
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras != null) {
            extras.getBoolean("in_progress");
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.f17811u.onQueryRefine((CharSequence) tag);
        }
    }

    public Cursor runQueryOnBackgroundThread(CharSequence charSequence) {
        String charSequence2 = charSequence == null ? "" : charSequence.toString();
        SearchView searchView = this.f17811u;
        if (searchView.getVisibility() != 0 || searchView.getWindowVisibility() != 0) {
            return null;
        }
        try {
            Cursor c7 = c(this.f17812v, charSequence2);
            if (c7 == null) {
                return null;
            }
            c7.getCount();
            return c7;
        } catch (RuntimeException e3) {
            Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", e3);
            return null;
        }
    }

    public void setQueryRefinement(int i2) {
        this.f17816z = i2;
    }
}
