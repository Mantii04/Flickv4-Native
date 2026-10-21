package com.google.android.gms.cast.framework.media;

import android.content.Context;
import android.view.View;
import android.widget.ArrayAdapter;
import com.google.android.gms.cast.MediaTrack;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzbu extends ArrayAdapter implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final Context f10294b;

    /* renamed from: e, reason: collision with root package name */
    public int f10295e;

    public zzbu(Context context, List list, int i2) {
        super(context, R.layout.cast_tracks_chooser_dialog_row_layout, list == null ? new ArrayList() : list);
        this.f10294b = context;
        this.f10295e = i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0089, code lost:
    
        if (android.text.TextUtils.isEmpty(r4) == false) goto L20;
     */
    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View getView(int r8, android.view.View r9, android.view.ViewGroup r10) {
        /*
            r7 = this;
            r0 = 1
            r1 = 0
            android.content.Context r2 = r7.f10294b
            if (r9 != 0) goto L33
            java.lang.String r9 = "layout_inflater"
            java.lang.Object r9 = r2.getSystemService(r9)
            android.view.LayoutInflater r9 = (android.view.LayoutInflater) r9
            java.lang.Object r9 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r9)
            android.view.LayoutInflater r9 = (android.view.LayoutInflater) r9
            int r3 = com.google.android.gms.cast.framework.R.layout.cast_tracks_chooser_dialog_row_layout
            android.view.View r9 = r9.inflate(r3, r10, r1)
            com.google.android.gms.cast.framework.media.zzbt r10 = new com.google.android.gms.cast.framework.media.zzbt
            int r3 = com.google.android.gms.cast.framework.R.id.text
            android.view.View r3 = r9.findViewById(r3)
            android.widget.TextView r3 = (android.widget.TextView) r3
            int r4 = com.google.android.gms.cast.framework.R.id.radio
            android.view.View r4 = r9.findViewById(r4)
            android.widget.RadioButton r4 = (android.widget.RadioButton) r4
            r10.<init>(r3, r4)
            r9.setTag(r10)
            goto L3f
        L33:
            java.lang.Object r10 = r9.getTag()
            com.google.android.gms.cast.framework.media.zzbt r10 = (com.google.android.gms.cast.framework.media.zzbt) r10
            java.lang.Object r10 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r10)
            com.google.android.gms.cast.framework.media.zzbt r10 = (com.google.android.gms.cast.framework.media.zzbt) r10
        L3f:
            android.widget.RadioButton r3 = r10.f10293b
            java.lang.Integer r4 = java.lang.Integer.valueOf(r8)
            r3.setTag(r4)
            int r3 = r7.f10295e
            if (r3 != r8) goto L4e
            r3 = r0
            goto L4f
        L4e:
            r3 = r1
        L4f:
            android.widget.RadioButton r4 = r10.f10293b
            r4.setChecked(r3)
            r9.setOnClickListener(r7)
            java.lang.Object r3 = r7.getItem(r8)
            com.google.android.gms.cast.MediaTrack r3 = (com.google.android.gms.cast.MediaTrack) r3
            java.lang.Object r3 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r3)
            com.google.android.gms.cast.MediaTrack r3 = (com.google.android.gms.cast.MediaTrack) r3
            java.lang.String r4 = r3.getName()
            java.util.Locale r5 = r3.getLanguageLocale()
            boolean r6 = android.text.TextUtils.isEmpty(r4)
            if (r6 == 0) goto L9b
            int r3 = r3.getSubtype()
            r4 = 2
            if (r3 != r4) goto L7f
            int r8 = com.google.android.gms.cast.framework.R.string.cast_tracks_chooser_dialog_closed_captions
            java.lang.String r4 = r2.getString(r8)
            goto L9b
        L7f:
            if (r5 == 0) goto L8c
            java.lang.String r4 = r5.getDisplayLanguage()
            boolean r3 = android.text.TextUtils.isEmpty(r4)
            if (r3 != 0) goto L8c
            goto L9b
        L8c:
            int r3 = com.google.android.gms.cast.framework.R.string.cast_tracks_chooser_dialog_default_track_name
            int r8 = r8 + r0
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r0[r1] = r8
            java.lang.String r4 = r2.getString(r3, r0)
        L9b:
            android.widget.TextView r8 = r10.f10292a
            r8.setText(r4)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.zzbu.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f10295e = ((Integer) Preconditions.checkNotNull(((zzbt) Preconditions.checkNotNull((zzbt) view.getTag())).f10293b.getTag())).intValue();
        notifyDataSetChanged();
    }

    public final MediaTrack zza() {
        int i2 = this.f10295e;
        if (i2 < 0 || i2 >= getCount()) {
            return null;
        }
        return (MediaTrack) getItem(this.f10295e);
    }
}
