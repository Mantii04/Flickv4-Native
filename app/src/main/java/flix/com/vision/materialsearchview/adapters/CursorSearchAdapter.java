package flix.com.vision.materialsearchview.adapters;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CursorAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import flix.com.vision.R;
import flix.com.vision.subtitles.OpenSubtitles;

/* loaded from: classes2.dex */
public class CursorSearchAdapter extends CursorAdapter {

    public class ListViewHolder {

        /* renamed from: a, reason: collision with root package name */
        public final ImageView f16051a;

        /* renamed from: b, reason: collision with root package name */
        public final TextView f16052b;

        public ListViewHolder(CursorSearchAdapter cursorSearchAdapter, View view) {
            this.f16051a = (ImageView) view.findViewById(R.id.iv_icon);
            this.f16052b = (TextView) view.findViewById(R.id.tv_str);
        }
    }

    public CursorSearchAdapter(Context context, Cursor cursor) {
        super(context, cursor, 0);
    }

    @Override // android.widget.CursorAdapter
    public void bindView(View view, Context context, Cursor cursor) {
        ListViewHolder listViewHolder = new ListViewHolder(this, view);
        view.setTag(listViewHolder);
        String string = cursor.getString(cursor.getColumnIndexOrThrow(OpenSubtitles.Params.Key.QUERY));
        boolean z6 = cursor.getInt(cursor.getColumnIndexOrThrow("is_history")) != 0;
        listViewHolder.f16052b.setText(string);
        if (z6) {
            listViewHolder.f16051a.setImageResource(R.drawable.ic_history_white);
        } else {
            listViewHolder.f16051a.setImageResource(R.drawable.ic_action_search_white);
        }
    }

    @Override // android.widget.CursorAdapter, android.widget.Adapter
    public Object getItem(int i2) {
        Cursor cursor = getCursor();
        return cursor.moveToPosition(i2) ? cursor.getString(cursor.getColumnIndexOrThrow(OpenSubtitles.Params.Key.QUERY)) : "";
    }

    @Override // android.widget.CursorAdapter
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return LayoutInflater.from(context).inflate(R.layout.list_item, viewGroup, false);
    }
}
