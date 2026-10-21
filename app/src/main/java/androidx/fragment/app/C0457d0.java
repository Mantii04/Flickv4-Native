package androidx.fragment.app;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import d.AbstractC0771b;

/* renamed from: androidx.fragment.app.d0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0457d0 extends AbstractC0771b {
    @Override // d.AbstractC0771b
    public Intent createIntent(Context context, androidx.activity.result.m mVar) {
        Bundle bundleExtra;
        Intent intent = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
        Intent fillInIntent = mVar.getFillInIntent();
        if (fillInIntent != null && (bundleExtra = fillInIntent.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) != null) {
            intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundleExtra);
            fillInIntent.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
            if (fillInIntent.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                mVar = new androidx.activity.result.j(mVar.getIntentSender()).setFillInIntent(null).setFlags(mVar.getFlagsValues(), mVar.getFlagsMask()).build();
            }
        }
        intent.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", mVar);
        if (AbstractC0467i0.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "CreateIntent created the following intent: " + intent);
        }
        return intent;
    }

    @Override // d.AbstractC0771b
    public androidx.activity.result.b parseResult(int i2, Intent intent) {
        return new androidx.activity.result.b(i2, intent);
    }
}
