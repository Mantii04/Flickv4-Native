package androidx.activity;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.activity.result.ActivityResultRegistry;
import d.AbstractC0771b;
import d.C0770a;
import z.AbstractC1958d;
import z.AbstractC1960f;

/* loaded from: classes.dex */
public final class j extends ActivityResultRegistry {

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ComponentActivity f4875h;

    public j(ComponentActivity componentActivity) {
        this.f4875h = componentActivity;
    }

    @Override // androidx.activity.result.ActivityResultRegistry
    public <I, O> void onLaunch(int i2, AbstractC0771b abstractC0771b, I i7, AbstractC1960f abstractC1960f) {
        Bundle bundle;
        int i8;
        ComponentActivity componentActivity = this.f4875h;
        C0770a synchronousResult = abstractC0771b.getSynchronousResult(componentActivity, i7);
        if (synchronousResult != null) {
            new Handler(Looper.getMainLooper()).post(new h(this, i2, synchronousResult));
            return;
        }
        Intent createIntent = abstractC0771b.createIntent(componentActivity, i7);
        if (createIntent.getExtras() != null && createIntent.getExtras().getClassLoader() == null) {
            createIntent.setExtrasClassLoader(componentActivity.getClassLoader());
        }
        if (createIntent.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
            bundle = createIntent.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
            createIntent.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
        } else {
            bundle = null;
        }
        Bundle bundle2 = bundle;
        if ("androidx.activity.result.contract.action.REQUEST_PERMISSIONS".equals(createIntent.getAction())) {
            String[] stringArrayExtra = createIntent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
            if (stringArrayExtra == null) {
                stringArrayExtra = new String[0];
            }
            AbstractC1958d.requestPermissions(componentActivity, stringArrayExtra, i2);
            return;
        }
        if (!"androidx.activity.result.contract.action.INTENT_SENDER_REQUEST".equals(createIntent.getAction())) {
            AbstractC1958d.startActivityForResult(componentActivity, createIntent, i2, bundle2);
            return;
        }
        androidx.activity.result.m mVar = (androidx.activity.result.m) createIntent.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
        try {
            i8 = i2;
        } catch (IntentSender.SendIntentException e3) {
            e = e3;
            i8 = i2;
        }
        try {
            AbstractC1958d.startIntentSenderForResult(componentActivity, mVar.getIntentSender(), i8, mVar.getFillInIntent(), mVar.getFlagsMask(), mVar.getFlagsValues(), 0, bundle2);
        } catch (IntentSender.SendIntentException e7) {
            e = e7;
            new Handler(Looper.getMainLooper()).post(new i(this, i8, e));
        }
    }
}
