package com.google.android.gms.cast.framework.media;

import android.util.SparseIntArray;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.media.MediaQueue;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.internal.CastUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class zzs extends RemoteMediaClient.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MediaQueue f10314a;

    public zzs(MediaQueue mediaQueue) {
        this.f10314a = mediaQueue;
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void onStatusUpdated() {
        MediaQueue mediaQueue = this.f10314a;
        MediaStatus mediaStatus = mediaQueue.f9962c.getMediaStatus();
        long zzb = (mediaStatus == null || mediaStatus.zzd()) ? 0L : mediaStatus.zzb();
        if (zzb != mediaQueue.f9961b) {
            mediaQueue.f9961b = zzb;
            mediaQueue.zzl();
            if (mediaQueue.f9961b != 0) {
                mediaQueue.zzo();
            }
        }
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void zzb(int[] iArr) {
        List zzd = CastUtils.zzd(iArr);
        MediaQueue mediaQueue = this.f10314a;
        if (mediaQueue.f9963d.equals(zzd)) {
            return;
        }
        mediaQueue.e();
        mediaQueue.f9965f.evictAll();
        mediaQueue.f9966g.clear();
        mediaQueue.f9963d = zzd;
        MediaQueue.b(mediaQueue);
        mediaQueue.d();
        mediaQueue.c();
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void zzc(int[] iArr, int i2) {
        int i7;
        if (i2 == 0) {
            i7 = this.f10314a.f9963d.size();
        } else {
            i7 = this.f10314a.f9964e.get(i2, -1);
            if (i7 == -1) {
                this.f10314a.zzo();
                return;
            }
        }
        int length = iArr.length;
        this.f10314a.e();
        this.f10314a.f9963d.addAll(i7, CastUtils.zzd(iArr));
        MediaQueue.b(this.f10314a);
        MediaQueue mediaQueue = this.f10314a;
        synchronized (mediaQueue.f9972m) {
            try {
                Iterator it = mediaQueue.f9972m.iterator();
                while (it.hasNext()) {
                    ((MediaQueue.Callback) it.next()).itemsInsertedInRange(i7, length);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f10314a.c();
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void zzd(MediaQueueItem[] mediaQueueItemArr) {
        HashSet hashSet = new HashSet();
        MediaQueue mediaQueue = this.f10314a;
        mediaQueue.f9966g.clear();
        int i2 = 0;
        while (true) {
            int length = mediaQueueItemArr.length;
            SparseIntArray sparseIntArray = mediaQueue.f9964e;
            if (i2 >= length) {
                ArrayList arrayList = mediaQueue.f9966g;
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    int i7 = sparseIntArray.get(((Integer) it.next()).intValue(), -1);
                    if (i7 != -1) {
                        hashSet.add(Integer.valueOf(i7));
                    }
                }
                arrayList.clear();
                ArrayList arrayList2 = new ArrayList(hashSet);
                Collections.sort(arrayList2);
                mediaQueue.e();
                MediaQueue.a(mediaQueue, CastUtils.zzf(arrayList2));
                mediaQueue.c();
                return;
            }
            MediaQueueItem mediaQueueItem = mediaQueueItemArr[i2];
            int itemId = mediaQueueItem.getItemId();
            mediaQueue.f9965f.put(Integer.valueOf(itemId), mediaQueueItem);
            int i8 = sparseIntArray.get(itemId, -1);
            if (i8 == -1) {
                mediaQueue.zzo();
                return;
            } else {
                hashSet.add(Integer.valueOf(i8));
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void zze(int[] iArr) {
        ArrayList arrayList = new ArrayList();
        for (int i2 : iArr) {
            this.f10314a.f9965f.remove(Integer.valueOf(i2));
            int i7 = this.f10314a.f9964e.get(i2, -1);
            if (i7 == -1) {
                this.f10314a.zzo();
                return;
            } else {
                this.f10314a.f9964e.delete(i2);
                arrayList.add(Integer.valueOf(i7));
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        Collections.sort(arrayList);
        this.f10314a.e();
        this.f10314a.f9963d.removeAll(CastUtils.zzd(iArr));
        MediaQueue.b(this.f10314a);
        MediaQueue mediaQueue = this.f10314a;
        int[] zzf = CastUtils.zzf(arrayList);
        synchronized (mediaQueue.f9972m) {
            try {
                Iterator it = mediaQueue.f9972m.iterator();
                while (it.hasNext()) {
                    ((MediaQueue.Callback) it.next()).itemsRemovedAtIndexes(zzf);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f10314a.c();
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void zzf(List list, List list2, int i2) {
        int i7;
        ArrayList arrayList = new ArrayList();
        if (i2 == 0) {
            i7 = this.f10314a.f9963d.size();
        } else if (list2.isEmpty()) {
            this.f10314a.f9960a.w("Received a Queue Reordered message with an empty reordered items IDs list.", new Object[0]);
            i7 = -1;
        } else {
            i7 = this.f10314a.f9964e.get(i2, -1);
            if (i7 == -1) {
                i7 = this.f10314a.f9964e.get(((Integer) list2.get(0)).intValue(), -1);
            }
        }
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            int i8 = this.f10314a.f9964e.get(((Integer) it.next()).intValue(), -1);
            if (i8 == -1) {
                this.f10314a.zzo();
                return;
            }
            arrayList.add(Integer.valueOf(i8));
        }
        this.f10314a.e();
        MediaQueue mediaQueue = this.f10314a;
        mediaQueue.f9963d = list;
        MediaQueue.b(mediaQueue);
        MediaQueue mediaQueue2 = this.f10314a;
        synchronized (mediaQueue2.f9972m) {
            try {
                Iterator it2 = mediaQueue2.f9972m.iterator();
                while (it2.hasNext()) {
                    ((MediaQueue.Callback) it2.next()).itemsReorderedAtIndexes(arrayList, i7);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f10314a.c();
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void zzg(int[] iArr) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (true) {
            int length = iArr.length;
            MediaQueue mediaQueue = this.f10314a;
            if (i2 >= length) {
                Collections.sort(arrayList);
                mediaQueue.e();
                MediaQueue.a(mediaQueue, CastUtils.zzf(arrayList));
                mediaQueue.c();
                return;
            }
            int i7 = iArr[i2];
            mediaQueue.f9965f.remove(Integer.valueOf(i7));
            int i8 = mediaQueue.f9964e.get(i7, -1);
            if (i8 == -1) {
                mediaQueue.zzo();
                return;
            } else {
                arrayList.add(Integer.valueOf(i8));
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void zzh() {
        this.f10314a.zzo();
    }
}
