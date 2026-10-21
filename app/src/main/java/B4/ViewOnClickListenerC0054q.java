package B4;

import android.app.FragmentManager;
import android.content.Intent;
import android.os.CountDownTimer;
import android.view.ContextThemeWrapper;
import android.view.View;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.ModernFilePickerActivity;
import flix.com.vision.activities.SettingsActivity;
import flix.com.vision.activities.player.SimpleVideoPlayer;
import h5.AbstractC0995i;
import java.util.ArrayList;
import y4.f1;

/* renamed from: B4.q, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class ViewOnClickListenerC0054q implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f273b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SimpleVideoPlayer f274e;

    public /* synthetic */ ViewOnClickListenerC0054q(SimpleVideoPlayer simpleVideoPlayer, int i2) {
        this.f273b = i2;
        this.f274e = simpleVideoPlayer;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i2 = 1;
        SimpleVideoPlayer simpleVideoPlayer = this.f274e;
        switch (this.f273b) {
            case 0:
                SimpleVideoPlayer.e(simpleVideoPlayer);
                break;
            case 1:
                boolean z6 = SimpleVideoPlayer.f15629Q0;
                simpleVideoPlayer.v();
                break;
            case 2:
                ArrayList arrayList = simpleVideoPlayer.f15697r;
                if (arrayList != null && !arrayList.isEmpty()) {
                    simpleVideoPlayer.j(simpleVideoPlayer.f15697r);
                    break;
                }
                break;
            case 3:
                boolean z7 = SimpleVideoPlayer.f15629Q0;
                simpleVideoPlayer.getClass();
                simpleVideoPlayer.startActivity(new Intent(simpleVideoPlayer, (Class<?>) SettingsActivity.class));
                break;
            case 4:
                simpleVideoPlayer.f15630A.seekTo(simpleVideoPlayer.f15661P0.end_ms - 1000);
                simpleVideoPlayer.r();
                break;
            case 5:
                boolean z8 = SimpleVideoPlayer.f15629Q0;
                simpleVideoPlayer.r();
                break;
            case 6:
                boolean z9 = SimpleVideoPlayer.f15629Q0;
                simpleVideoPlayer.getClass();
                try {
                    simpleVideoPlayer.l();
                    break;
                } catch (Exception unused) {
                    return;
                }
            case 7:
                ArrayList arrayList2 = simpleVideoPlayer.f15697r;
                if (arrayList2 != null && !arrayList2.isEmpty()) {
                    simpleVideoPlayer.j(simpleVideoPlayer.f15697r);
                    break;
                }
                break;
            case 8:
                boolean z10 = SimpleVideoPlayer.f15629Q0;
                simpleVideoPlayer.getClass();
                simpleVideoPlayer.startActivity(new Intent(simpleVideoPlayer, (Class<?>) SettingsActivity.class));
                break;
            case 9:
                boolean z11 = SimpleVideoPlayer.f15629Q0;
                CountDownTimer countDownTimer = simpleVideoPlayer.f15649J0;
                if (countDownTimer != null) {
                    countDownTimer.cancel();
                }
                simpleVideoPlayer.q();
                try {
                    N4.a.Success(simpleVideoPlayer, "Auto-play cancelled", null, 48, 0);
                    break;
                } catch (Exception unused2) {
                    return;
                }
            case 10:
                boolean z12 = SimpleVideoPlayer.f15629Q0;
                simpleVideoPlayer.t();
                break;
            case 11:
                if (simpleVideoPlayer.f15683i0 > simpleVideoPlayer.f15682h0) {
                    simpleVideoPlayer.h();
                    int i7 = simpleVideoPlayer.f15682h0;
                    simpleVideoPlayer.f15682h0 = 1 + i7;
                    simpleVideoPlayer.x(i7);
                }
                simpleVideoPlayer.f15654M.setVisibility(8);
                break;
            case 12:
                simpleVideoPlayer.f15630A.removeCaptions();
                try {
                    N4.a.Success(simpleVideoPlayer, "Subtitles Disabled", null, 48, 0);
                } catch (Exception unused3) {
                }
                simpleVideoPlayer.H();
                break;
            case 13:
                boolean z13 = SimpleVideoPlayer.f15629Q0;
                simpleVideoPlayer.getClass();
                if (App.getInstance().f14440s.getBoolean("subtitle_message_shown4", false)) {
                    simpleVideoPlayer.f15631A0 = true;
                    if (!simpleVideoPlayer.f15639E0) {
                        ArrayList arrayList3 = simpleVideoPlayer.f15633B0;
                        if (arrayList3 != null && !arrayList3.isEmpty()) {
                            simpleVideoPlayer.E();
                            break;
                        } else {
                            simpleVideoPlayer.k(true);
                            break;
                        }
                    } else {
                        try {
                            AbstractC0995i.makeToast(simpleVideoPlayer, "Please wait...", true);
                            break;
                        } catch (Exception unused4) {
                            return;
                        }
                    }
                } else {
                    App.getInstance().f14440s.edit().putBoolean("subtitle_message_shown4", true).apply();
                    FragmentManager fragmentManager = simpleVideoPlayer.getFragmentManager();
                    Q4.d newInstance = Q4.d.newInstance(simpleVideoPlayer, true);
                    newInstance.setButton1("Activate", new ViewOnClickListenerC0054q(simpleVideoPlayer, 20));
                    newInstance.setButton2("Later", new ViewOnClickListenerC0054q(simpleVideoPlayer, 21));
                    newInstance.setTitle("Subtitles Auto-Download");
                    newInstance.setMessage("FlixVision can now download subtitles automatically. Would you like to activate it ?");
                    try {
                        newInstance.show(fragmentManager, "");
                        break;
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        return;
                    }
                }
                break;
            case 14:
                boolean z14 = SimpleVideoPlayer.f15629Q0;
                simpleVideoPlayer.getClass();
                Intent intent = new Intent(simpleVideoPlayer, (Class<?>) ModernFilePickerActivity.class);
                intent.putExtra("picker_mode", "subtitle");
                simpleVideoPlayer.startActivityForResult(intent, 12345);
                break;
            case 15:
                try {
                    Q4.g.newInstance(simpleVideoPlayer.f15630A).show(simpleVideoPlayer.getFragmentManager(), "");
                    break;
                } catch (Exception e7) {
                    e7.printStackTrace();
                    return;
                }
            case 16:
                boolean z15 = SimpleVideoPlayer.f15629Q0;
                int i8 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                e.r rVar = new e.r(new ContextThemeWrapper(simpleVideoPlayer, R.style.AlertDialogCustom));
                rVar.setTitle("Change Subtitle Size");
                rVar.setSingleChoiceItems(new f1(simpleVideoPlayer, R.layout.custom_select_dialog_singlechoice, simpleVideoPlayer.f15655M0, i8), i8, new DialogInterfaceOnClickListenerC0056t(simpleVideoPlayer, i2));
                rVar.show();
                break;
            case 17:
                boolean z16 = SimpleVideoPlayer.f15629Q0;
                int i9 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                e.r rVar2 = new e.r(new ContextThemeWrapper(simpleVideoPlayer, R.style.AlertDialogCustom));
                rVar2.setTitle("Change Subtitle Encoding");
                rVar2.setSingleChoiceItems(new f1(simpleVideoPlayer, R.layout.custom_select_dialog_singlechoice, simpleVideoPlayer.f15657N0, i9), i9, new DialogInterfaceOnClickListenerC0056t(simpleVideoPlayer, 2));
                rVar2.show();
                break;
            case 18:
                if (simpleVideoPlayer.f15689m0 > 5000) {
                    if (!simpleVideoPlayer.f15630A.isPlaying()) {
                        simpleVideoPlayer.f15687l0 = true;
                        break;
                    } else {
                        try {
                            simpleVideoPlayer.f15630A.seekTo(simpleVideoPlayer.f15689m0 - 5000);
                            break;
                        } catch (Exception unused5) {
                            return;
                        }
                    }
                }
                break;
            case 19:
                boolean z17 = SimpleVideoPlayer.f15629Q0;
                simpleVideoPlayer.getClass();
                App.getInstance().f14440s.edit().remove(simpleVideoPlayer.f15670Y).apply();
                break;
            case 20:
                boolean z18 = SimpleVideoPlayer.f15629Q0;
                simpleVideoPlayer.getClass();
                App.getInstance().f14440s.edit().putBoolean("pref_sub_auto_dl", true).apply();
                simpleVideoPlayer.k(true);
                break;
            default:
                boolean z19 = SimpleVideoPlayer.f15629Q0;
                simpleVideoPlayer.k(true);
                break;
        }
    }
}
