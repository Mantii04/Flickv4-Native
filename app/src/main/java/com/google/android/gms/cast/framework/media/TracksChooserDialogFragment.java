package com.google.android.gms.cast.framework.media;

import android.app.AlertDialog;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TabHost;
import androidx.fragment.app.DialogInterfaceOnCancelListenerC0486y;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.MediaTrack;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class TracksChooserDialogFragment extends DialogInterfaceOnCancelListenerC0486y {

    /* renamed from: A0, reason: collision with root package name */
    public RemoteMediaClient f10041A0;

    /* renamed from: v0, reason: collision with root package name */
    public boolean f10042v0;

    /* renamed from: w0, reason: collision with root package name */
    public ArrayList f10043w0;

    /* renamed from: x0, reason: collision with root package name */
    public ArrayList f10044x0;

    /* renamed from: y0, reason: collision with root package name */
    public long[] f10045y0;

    /* renamed from: z0, reason: collision with root package name */
    public AlertDialog f10046z0;

    @Deprecated
    public TracksChooserDialogFragment() {
    }

    public static int j(ArrayList arrayList, long[] jArr, int i2) {
        if (jArr != null && arrayList != null) {
            for (int i7 = 0; i7 < arrayList.size(); i7++) {
                for (long j7 : jArr) {
                    if (j7 == ((MediaTrack) arrayList.get(i7)).getId()) {
                        return i7;
                    }
                }
            }
        }
        return i2;
    }

    public static ArrayList k(int i2, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            MediaTrack mediaTrack = (MediaTrack) it.next();
            if (mediaTrack.getType() == i2) {
                arrayList.add(mediaTrack);
            }
        }
        return arrayList;
    }

    public static TracksChooserDialogFragment newInstance() {
        return new TracksChooserDialogFragment();
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0486y, androidx.fragment.app.C
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f10042v0 = true;
        this.f10044x0 = new ArrayList();
        this.f10043w0 = new ArrayList();
        this.f10045y0 = new long[0];
        CastSession currentCastSession = CastContext.getSharedInstance(getContext()).getSessionManager().getCurrentCastSession();
        if (currentCastSession != null && currentCastSession.isConnected()) {
            RemoteMediaClient remoteMediaClient = currentCastSession.getRemoteMediaClient();
            this.f10041A0 = remoteMediaClient;
            if (remoteMediaClient != null && remoteMediaClient.hasMediaSession() && this.f10041A0.getMediaInfo() != null) {
                RemoteMediaClient remoteMediaClient2 = this.f10041A0;
                MediaStatus mediaStatus = remoteMediaClient2.getMediaStatus();
                if (mediaStatus != null) {
                    this.f10045y0 = mediaStatus.getActiveTrackIds();
                }
                MediaInfo mediaInfo = remoteMediaClient2.getMediaInfo();
                if (mediaInfo == null) {
                    this.f10042v0 = false;
                    return;
                }
                List<MediaTrack> mediaTracks = mediaInfo.getMediaTracks();
                if (mediaTracks == null) {
                    this.f10042v0 = false;
                    return;
                }
                this.f10044x0 = k(2, mediaTracks);
                ArrayList k7 = k(1, mediaTracks);
                this.f10043w0 = k7;
                if (k7.isEmpty()) {
                    return;
                }
                ArrayList arrayList = this.f10043w0;
                MediaTrack.Builder builder = new MediaTrack.Builder(-1L, 1);
                builder.setName(getActivity().getString(R.string.cast_tracks_chooser_dialog_none));
                builder.setSubtype(2);
                builder.setContentId("");
                arrayList.add(0, builder.build());
                return;
            }
        }
        this.f10042v0 = false;
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0486y
    public Dialog onCreateDialog(Bundle bundle) {
        int j7 = j(this.f10043w0, this.f10045y0, 0);
        int j8 = j(this.f10044x0, this.f10045y0, -1);
        zzbu zzbuVar = new zzbu(getActivity(), this.f10043w0, j7);
        zzbu zzbuVar2 = new zzbu(getActivity(), this.f10044x0, j8);
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        View inflate = getActivity().getLayoutInflater().inflate(R.layout.cast_tracks_chooser_dialog_layout, (ViewGroup) null);
        ListView listView = (ListView) inflate.findViewById(R.id.text_list_view);
        ListView listView2 = (ListView) inflate.findViewById(R.id.audio_list_view);
        TabHost tabHost = (TabHost) inflate.findViewById(R.id.tab_host);
        tabHost.setup();
        if (zzbuVar.getCount() == 0) {
            listView.setVisibility(4);
        } else {
            listView.setAdapter((ListAdapter) zzbuVar);
            TabHost.TabSpec newTabSpec = tabHost.newTabSpec("textTab");
            newTabSpec.setContent(R.id.text_list_view);
            newTabSpec.setIndicator(getActivity().getString(R.string.cast_tracks_chooser_dialog_subtitles));
            tabHost.addTab(newTabSpec);
        }
        if (zzbuVar2.getCount() <= 1) {
            listView2.setVisibility(4);
        } else {
            listView2.setAdapter((ListAdapter) zzbuVar2);
            TabHost.TabSpec newTabSpec2 = tabHost.newTabSpec("audioTab");
            newTabSpec2.setContent(R.id.audio_list_view);
            newTabSpec2.setIndicator(getActivity().getString(R.string.cast_tracks_chooser_dialog_audio));
            tabHost.addTab(newTabSpec2);
        }
        builder.setView(inflate).setPositiveButton(getActivity().getString(R.string.cast_tracks_chooser_dialog_ok), new zzbr(this, zzbuVar, zzbuVar2)).setNegativeButton(R.string.cast_tracks_chooser_dialog_cancel, new zzbq(this));
        AlertDialog alertDialog = this.f10046z0;
        if (alertDialog != null) {
            alertDialog.cancel();
            this.f10046z0 = null;
        }
        AlertDialog create = builder.create();
        this.f10046z0 = create;
        return create;
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0486y, androidx.fragment.app.C
    public void onDestroyView() {
        Dialog dialog = getDialog();
        if (dialog != null && getRetainInstance()) {
            dialog.setDismissMessage(null);
        }
        super.onDestroyView();
    }
}
