package T;

import A.i;
import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;

/* loaded from: classes.dex */
public abstract class c extends BaseAdapter implements Filterable {

    /* renamed from: b, reason: collision with root package name */
    public boolean f3416b;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f3417e;

    /* renamed from: f, reason: collision with root package name */
    public Cursor f3418f;

    /* renamed from: j, reason: collision with root package name */
    public final Context f3419j;

    /* renamed from: m, reason: collision with root package name */
    public int f3420m;

    /* renamed from: n, reason: collision with root package name */
    public final a f3421n;

    /* renamed from: p, reason: collision with root package name */
    public final b f3422p;

    /* renamed from: q, reason: collision with root package name */
    public d f3423q;

    public c(Context context, Cursor cursor, boolean z6) {
        int i2 = z6 ? 1 : 2;
        if ((i2 & 1) == 1) {
            i2 |= 2;
            this.f3417e = true;
        } else {
            this.f3417e = false;
        }
        boolean z7 = cursor != null;
        this.f3418f = cursor;
        this.f3416b = z7;
        this.f3419j = context;
        this.f3420m = z7 ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i2 & 2) == 2) {
            this.f3421n = new a(this);
            this.f3422p = new b(this);
        } else {
            this.f3421n = null;
            this.f3422p = null;
        }
        if (z7) {
            a aVar = this.f3421n;
            if (aVar != null) {
                cursor.registerContentObserver(aVar);
            }
            b bVar = this.f3422p;
            if (bVar != null) {
                cursor.registerDataSetObserver(bVar);
            }
        }
    }

    public abstract void bindView(View view, Context context, Cursor cursor);

    public void changeCursor(Cursor cursor) {
        Cursor swapCursor = swapCursor(cursor);
        if (swapCursor != null) {
            swapCursor.close();
        }
    }

    public abstract CharSequence convertToString(Cursor cursor);

    @Override // android.widget.Adapter
    public int getCount() {
        Cursor cursor;
        if (!this.f3416b || (cursor = this.f3418f) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    public Cursor getCursor() {
        return this.f3418f;
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i2, View view, ViewGroup viewGroup) {
        if (!this.f3416b) {
            return null;
        }
        this.f3418f.moveToPosition(i2);
        if (view == null) {
            view = newDropDownView(this.f3419j, this.f3418f, viewGroup);
        }
        bindView(view, this.f3419j, this.f3418f);
        return view;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.f3423q == null) {
            d dVar = new d();
            dVar.f3424a = this;
            this.f3423q = dVar;
        }
        return this.f3423q;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        Cursor cursor;
        if (!this.f3416b || (cursor = this.f3418f) == null) {
            return null;
        }
        cursor.moveToPosition(i2);
        return this.f3418f;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        Cursor cursor;
        if (this.f3416b && (cursor = this.f3418f) != null && cursor.moveToPosition(i2)) {
            return this.f3418f.getLong(this.f3420m);
        }
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (!this.f3416b) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        }
        if (!this.f3418f.moveToPosition(i2)) {
            throw new IllegalStateException(i.f(i2, "couldn't move cursor to position "));
        }
        if (view == null) {
            view = newView(this.f3419j, this.f3418f, viewGroup);
        }
        bindView(view, this.f3419j, this.f3418f);
        return view;
    }

    public abstract View newDropDownView(Context context, Cursor cursor, ViewGroup viewGroup);

    public abstract View newView(Context context, Cursor cursor, ViewGroup viewGroup);

    public void onContentChanged() {
        Cursor cursor;
        if (!this.f3417e || (cursor = this.f3418f) == null || cursor.isClosed()) {
            return;
        }
        this.f3416b = this.f3418f.requery();
    }

    public Cursor swapCursor(Cursor cursor) {
        Cursor cursor2 = this.f3418f;
        if (cursor == cursor2) {
            return null;
        }
        if (cursor2 != null) {
            a aVar = this.f3421n;
            if (aVar != null) {
                cursor2.unregisterContentObserver(aVar);
            }
            b bVar = this.f3422p;
            if (bVar != null) {
                cursor2.unregisterDataSetObserver(bVar);
            }
        }
        this.f3418f = cursor;
        if (cursor == null) {
            this.f3420m = -1;
            this.f3416b = false;
            notifyDataSetInvalidated();
            return cursor2;
        }
        a aVar2 = this.f3421n;
        if (aVar2 != null) {
            cursor.registerContentObserver(aVar2);
        }
        b bVar2 = this.f3422p;
        if (bVar2 != null) {
            cursor.registerDataSetObserver(bVar2);
        }
        this.f3420m = cursor.getColumnIndexOrThrow("_id");
        this.f3416b = true;
        notifyDataSetChanged();
        return cursor2;
    }
}
