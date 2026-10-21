package B4;

import flix.com.vision.activities.player.SimpleVideoPlayer;

/* loaded from: classes2.dex */
public final class E implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SimpleVideoPlayer f226b;

    public E(SimpleVideoPlayer simpleVideoPlayer) {
        this.f226b = simpleVideoPlayer;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002d, code lost:
    
        if (r1 >= r7) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0059, code lost:
    
        if (r0.f15672a0 != false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005b, code lost:
    
        android.util.Log.d("AutoPlay", "Abort: Feature disabled in settings");
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0064, code lost:
    
        if (r0.f15674b0 == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0066, code lost:
    
        android.util.Log.d("AutoPlay", "Abort: Prompt already shown");
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006f, code lost:
    
        if (r0.f15663R == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0071, code lost:
    
        android.util.Log.d("AutoPlay", "Abort: Already loading next link");
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0078, code lost:
    
        r2 = r0.f15660P;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x007a, code lost:
    
        if (r2 == null) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0080, code lost:
    
        if (r2.isEmpty() == false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x008a, code lost:
    
        if (r0.f15682h0 >= r2.size()) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0090, code lost:
    
        if (r0.f15682h0 < r0.f15683i0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0094, code lost:
    
        android.util.Log.d("AutoPlay", "SUCCESS: Triggering prompt for Episode index: " + r0.f15682h0);
        r0.f15674b0 = true;
        r3 = (android.widget.TextView) r0.findViewById(flix.com.vision.R.id.next_episode_title);
        r4 = (android.widget.TextView) r0.findViewById(flix.com.vision.R.id.next_episode_name);
        r5 = (android.widget.ProgressBar) r0.findViewById(flix.com.vision.R.id.next_episode_countdown_progress);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c2, code lost:
    
        r2 = (flix.com.vision.models.Episode) r2.get(r0.f15682h0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ca, code lost:
    
        if (r4 == null) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00cc, code lost:
    
        r4.setText("S" + r0.f15681g0 + "E" + r2.number + ": " + r2.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00ff, code lost:
    
        if (r0.f15654M.getVisibility() != 0) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0102, code lost:
    
        r1 = r0.f15695q;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0104, code lost:
    
        if (r1 == null) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0106, code lost:
    
        r1.requestFocus();
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0109, code lost:
    
        r0.f15654M.setVisibility(0);
        r0.f15654M.startAnimation(r0.f15694p0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0116, code lost:
    
        r1 = r0.f15649J0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0118, code lost:
    
        if (r1 == null) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x011a, code lost:
    
        r1.cancel();
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x011d, code lost:
    
        r0.f15649J0 = new B4.A(r0, r3, r5).start();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00f2, code lost:
    
        if (r4 != null) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00f4, code lost:
    
        r4.setText("Next Episode");
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0129, code lost:
    
        android.util.Log.d("AutoPlay", "Abort: Reached end of season. Ep: " + r0.f15682h0 + " Count: " + r0.f15683i0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0147, code lost:
    
        android.util.Log.d("AutoPlay", "Abort: Episodes list is null or empty");
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0051, code lost:
    
        if (r1 > r7) goto L27;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: B4.E.run():void");
    }
}
