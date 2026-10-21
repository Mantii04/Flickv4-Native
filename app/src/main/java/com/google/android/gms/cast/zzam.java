package com.google.android.gms.cast;

import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;

/* loaded from: classes.dex */
final class zzam implements OnCompleteListener {
    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task task) {
        if (!task.isSuccessful()) {
            CastRemoteDisplayLocalService.f9633q.e("Connection was not successful", new Object[0]);
            throw null;
        }
        Logger logger = CastRemoteDisplayLocalService.f9633q;
        logger.d("startRemoteDisplay successful", new Object[0]);
        synchronized (CastRemoteDisplayLocalService.f9634r) {
            try {
                if (CastRemoteDisplayLocalService.f9636t == null) {
                    logger.d("Remote Display started but session already cancelled", new Object[0]);
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        throw null;
    }
}
