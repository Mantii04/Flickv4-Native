package flix.com.vision.activities;

import A.i;
import B4.DialogInterfaceOnDismissListenerC0040c;
import B4.RunnableC0061y;
import B4.ViewOnClickListenerC0038a;
import C4.C0098w;
import android.app.FragmentManager;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ToggleButton;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import de.hdodenhof.circleimageview.CircleImageView;
import e.AbstractActivityC0842v;
import e.DialogInterfaceC0839s;
import e.r;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.ModernFilePickerActivity;
import flix.com.vision.activities.ReleaseHistoryActivity;
import flix.com.vision.activities.SettingsActivity;
import flix.com.vision.activities.TraktActivity;
import flix.com.vision.activities.TraktTvConfigActivity;
import flix.com.vision.activities.adult.AdultPINSetupActivity;
import flix.com.vision.activities.adult.AdultZonePINEntryActivity;
import flix.com.vision.api.alldebrid.AllDebridCommon;
import flix.com.vision.api.premiumize.PremiumizeCommon;
import flix.com.vision.api.realdebrid.RealDebridCommon;
import flix.com.vision.api.realdebrid.RealDebridLoginActivity;
import flix.com.vision.models.ColorItem;
import flix.com.vision.models.SubEvent;
import flix.com.vision.tv.Constant;
import h5.AbstractC0995i;
import h5.C0996j;
import io.hopmonsdk.Hopmn;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.StringCharacterIterator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import m4.D;
import org.greenrobot.eventbus.EventBus;
import y4.V0;
import y4.W0;

/* loaded from: classes2.dex */
public class SettingsActivity extends AbstractActivityC0842v {

    /* renamed from: c2, reason: collision with root package name */
    public static final /* synthetic */ int f15080c2 = 0;

    /* renamed from: A, reason: collision with root package name */
    public CircleImageView f15081A;

    /* renamed from: A0, reason: collision with root package name */
    public TextView f15082A0;

    /* renamed from: A1, reason: collision with root package name */
    public CheckBox f15083A1;

    /* renamed from: B, reason: collision with root package name */
    public ToggleButton f15084B;

    /* renamed from: B0, reason: collision with root package name */
    public FrameLayout f15085B0;

    /* renamed from: B1, reason: collision with root package name */
    public CheckBox f15086B1;

    /* renamed from: C, reason: collision with root package name */
    public TextView f15087C;

    /* renamed from: C0, reason: collision with root package name */
    public FrameLayout f15088C0;

    /* renamed from: C1, reason: collision with root package name */
    public CheckBox f15089C1;

    /* renamed from: D, reason: collision with root package name */
    public TextView f15090D;

    /* renamed from: D0, reason: collision with root package name */
    public FrameLayout f15091D0;

    /* renamed from: D1, reason: collision with root package name */
    public CheckBox f15092D1;

    /* renamed from: E, reason: collision with root package name */
    public TextView f15093E;

    /* renamed from: E0, reason: collision with root package name */
    public FrameLayout f15094E0;

    /* renamed from: E1, reason: collision with root package name */
    public CheckBox f15095E1;

    /* renamed from: F, reason: collision with root package name */
    public TextView f15096F;

    /* renamed from: F0, reason: collision with root package name */
    public FrameLayout f15097F0;

    /* renamed from: F1, reason: collision with root package name */
    public CheckBox f15098F1;

    /* renamed from: G, reason: collision with root package name */
    public TextView f15099G;

    /* renamed from: G0, reason: collision with root package name */
    public FrameLayout f15100G0;

    /* renamed from: G1, reason: collision with root package name */
    public CheckBox f15101G1;

    /* renamed from: H, reason: collision with root package name */
    public TextView f15102H;

    /* renamed from: H0, reason: collision with root package name */
    public FrameLayout f15103H0;

    /* renamed from: H1, reason: collision with root package name */
    public CheckBox f15104H1;

    /* renamed from: I, reason: collision with root package name */
    public TextView f15105I;

    /* renamed from: I0, reason: collision with root package name */
    public FrameLayout f15106I0;

    /* renamed from: I1, reason: collision with root package name */
    public CheckBox f15107I1;

    /* renamed from: J, reason: collision with root package name */
    public TextView f15108J;

    /* renamed from: J0, reason: collision with root package name */
    public FrameLayout f15109J0;

    /* renamed from: J1, reason: collision with root package name */
    public CheckBox f15110J1;

    /* renamed from: K, reason: collision with root package name */
    public TextView f15111K;

    /* renamed from: K0, reason: collision with root package name */
    public FrameLayout f15112K0;

    /* renamed from: K1, reason: collision with root package name */
    public CheckBox f15113K1;

    /* renamed from: L, reason: collision with root package name */
    public TextView f15114L;

    /* renamed from: L0, reason: collision with root package name */
    public FrameLayout f15115L0;

    /* renamed from: L1, reason: collision with root package name */
    public CheckBox f15116L1;

    /* renamed from: M, reason: collision with root package name */
    public TextView f15117M;

    /* renamed from: M0, reason: collision with root package name */
    public FrameLayout f15118M0;

    /* renamed from: M1, reason: collision with root package name */
    public CheckBox f15119M1;

    /* renamed from: N, reason: collision with root package name */
    public TextView f15120N;

    /* renamed from: N0, reason: collision with root package name */
    public LinearLayout f15121N0;

    /* renamed from: N1, reason: collision with root package name */
    public CheckBox f15122N1;

    /* renamed from: O, reason: collision with root package name */
    public TextView f15123O;

    /* renamed from: O0, reason: collision with root package name */
    public LinearLayout f15124O0;

    /* renamed from: O1, reason: collision with root package name */
    public CheckBox f15125O1;

    /* renamed from: P, reason: collision with root package name */
    public TextView f15126P;

    /* renamed from: P0, reason: collision with root package name */
    public LinearLayout f15127P0;

    /* renamed from: P1, reason: collision with root package name */
    public CheckBox f15128P1;

    /* renamed from: Q, reason: collision with root package name */
    public TextView f15129Q;

    /* renamed from: Q0, reason: collision with root package name */
    public LinearLayout f15130Q0;

    /* renamed from: Q1, reason: collision with root package name */
    public CheckBox f15131Q1;

    /* renamed from: R, reason: collision with root package name */
    public TextView f15132R;

    /* renamed from: R0, reason: collision with root package name */
    public LinearLayout f15133R0;

    /* renamed from: S, reason: collision with root package name */
    public TextView f15135S;

    /* renamed from: S0, reason: collision with root package name */
    public LinearLayout f15136S0;

    /* renamed from: T, reason: collision with root package name */
    public TextView f15138T;

    /* renamed from: T0, reason: collision with root package name */
    public LinearLayout f15139T0;

    /* renamed from: T1, reason: collision with root package name */
    public RecyclerView f15140T1;

    /* renamed from: U, reason: collision with root package name */
    public TextView f15141U;

    /* renamed from: U0, reason: collision with root package name */
    public LinearLayout f15142U0;

    /* renamed from: U1, reason: collision with root package name */
    public View f15143U1;

    /* renamed from: V, reason: collision with root package name */
    public TextView f15144V;

    /* renamed from: V0, reason: collision with root package name */
    public LinearLayout f15145V0;

    /* renamed from: V1, reason: collision with root package name */
    public C0098w f15146V1;

    /* renamed from: W, reason: collision with root package name */
    public TextView f15147W;

    /* renamed from: W0, reason: collision with root package name */
    public LinearLayout f15148W0;

    /* renamed from: X, reason: collision with root package name */
    public TextView f15150X;

    /* renamed from: X0, reason: collision with root package name */
    public LinearLayout f15151X0;

    /* renamed from: X1, reason: collision with root package name */
    public View f15152X1;

    /* renamed from: Y, reason: collision with root package name */
    public TextView f15153Y;

    /* renamed from: Y0, reason: collision with root package name */
    public LinearLayout f15154Y0;

    /* renamed from: Y1, reason: collision with root package name */
    public String[] f15155Y1;

    /* renamed from: Z, reason: collision with root package name */
    public TextView f15156Z;

    /* renamed from: Z0, reason: collision with root package name */
    public LinearLayout f15157Z0;

    /* renamed from: a0, reason: collision with root package name */
    public TextView f15159a0;

    /* renamed from: a1, reason: collision with root package name */
    public LinearLayout f15160a1;

    /* renamed from: b0, reason: collision with root package name */
    public TextView f15163b0;

    /* renamed from: b1, reason: collision with root package name */
    public LinearLayout f15164b1;

    /* renamed from: b2, reason: collision with root package name */
    public boolean f15165b2;

    /* renamed from: c0, reason: collision with root package name */
    public TextView f15166c0;

    /* renamed from: c1, reason: collision with root package name */
    public LinearLayout f15167c1;

    /* renamed from: d0, reason: collision with root package name */
    public TextView f15168d0;

    /* renamed from: d1, reason: collision with root package name */
    public LinearLayout f15169d1;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList f15170e;

    /* renamed from: e0, reason: collision with root package name */
    public TextView f15171e0;

    /* renamed from: e1, reason: collision with root package name */
    public LinearLayout f15172e1;

    /* renamed from: f, reason: collision with root package name */
    public ArrayList f15173f;

    /* renamed from: f0, reason: collision with root package name */
    public TextView f15174f0;

    /* renamed from: f1, reason: collision with root package name */
    public LinearLayout f15175f1;

    /* renamed from: g0, reason: collision with root package name */
    public TextView f15176g0;

    /* renamed from: g1, reason: collision with root package name */
    public LinearLayout f15177g1;

    /* renamed from: h0, reason: collision with root package name */
    public TextView f15178h0;

    /* renamed from: h1, reason: collision with root package name */
    public LinearLayout f15179h1;

    /* renamed from: i0, reason: collision with root package name */
    public TextView f15180i0;

    /* renamed from: i1, reason: collision with root package name */
    public LinearLayout f15181i1;

    /* renamed from: j, reason: collision with root package name */
    public View f15182j;

    /* renamed from: j0, reason: collision with root package name */
    public TextView f15183j0;

    /* renamed from: j1, reason: collision with root package name */
    public LinearLayout f15184j1;

    /* renamed from: k0, reason: collision with root package name */
    public TextView f15185k0;

    /* renamed from: k1, reason: collision with root package name */
    public LinearLayout f15186k1;

    /* renamed from: l0, reason: collision with root package name */
    public TextView f15187l0;

    /* renamed from: l1, reason: collision with root package name */
    public LinearLayout f15188l1;

    /* renamed from: m, reason: collision with root package name */
    public ImageView f15189m;

    /* renamed from: m0, reason: collision with root package name */
    public TextView f15190m0;

    /* renamed from: m1, reason: collision with root package name */
    public LinearLayout f15191m1;

    /* renamed from: n, reason: collision with root package name */
    public ImageView f15192n;

    /* renamed from: n0, reason: collision with root package name */
    public TextView f15193n0;

    /* renamed from: n1, reason: collision with root package name */
    public LinearLayout f15194n1;

    /* renamed from: o0, reason: collision with root package name */
    public TextView f15195o0;

    /* renamed from: o1, reason: collision with root package name */
    public LinearLayout f15196o1;

    /* renamed from: p, reason: collision with root package name */
    public ImageView f15197p;

    /* renamed from: p0, reason: collision with root package name */
    public TextView f15198p0;

    /* renamed from: p1, reason: collision with root package name */
    public LinearLayout f15199p1;

    /* renamed from: q, reason: collision with root package name */
    public C0996j f15200q;

    /* renamed from: q0, reason: collision with root package name */
    public TextView f15201q0;

    /* renamed from: q1, reason: collision with root package name */
    public LinearLayout f15202q1;

    /* renamed from: r, reason: collision with root package name */
    public Typeface f15203r;

    /* renamed from: r0, reason: collision with root package name */
    public TextView f15204r0;

    /* renamed from: r1, reason: collision with root package name */
    public LinearLayout f15205r1;

    /* renamed from: s, reason: collision with root package name */
    public Typeface f15206s;

    /* renamed from: s0, reason: collision with root package name */
    public TextView f15207s0;

    /* renamed from: s1, reason: collision with root package name */
    public LinearLayout f15208s1;

    /* renamed from: t, reason: collision with root package name */
    public ProgressDialog f15209t;

    /* renamed from: t0, reason: collision with root package name */
    public TextView f15210t0;

    /* renamed from: t1, reason: collision with root package name */
    public LinearLayout f15211t1;

    /* renamed from: u, reason: collision with root package name */
    public boolean f15212u;

    /* renamed from: u0, reason: collision with root package name */
    public TextView f15213u0;

    /* renamed from: u1, reason: collision with root package name */
    public LinearLayout f15214u1;

    /* renamed from: v, reason: collision with root package name */
    public boolean f15215v;

    /* renamed from: v0, reason: collision with root package name */
    public TextView f15216v0;

    /* renamed from: v1, reason: collision with root package name */
    public LinearLayout f15217v1;

    /* renamed from: w, reason: collision with root package name */
    public CharSequence[] f15218w;

    /* renamed from: w0, reason: collision with root package name */
    public TextView f15219w0;

    /* renamed from: w1, reason: collision with root package name */
    public LinearLayout f15220w1;

    /* renamed from: x, reason: collision with root package name */
    public CharSequence[] f15221x;

    /* renamed from: x0, reason: collision with root package name */
    public TextView f15222x0;

    /* renamed from: x1, reason: collision with root package name */
    public LinearLayout f15223x1;

    /* renamed from: y, reason: collision with root package name */
    public CharSequence[] f15224y;

    /* renamed from: y0, reason: collision with root package name */
    public TextView f15225y0;

    /* renamed from: y1, reason: collision with root package name */
    public CheckBox f15226y1;

    /* renamed from: z, reason: collision with root package name */
    public CharSequence[] f15227z;

    /* renamed from: z0, reason: collision with root package name */
    public TextView f15228z0;

    /* renamed from: z1, reason: collision with root package name */
    public CheckBox f15229z1;

    /* renamed from: b, reason: collision with root package name */
    public final String[] f15162b = {"glg--Galician", "mni--Manipuri", "bos--Bosnian", "swe--Swedish", "ind--Indonesian", "ita--Italian", "est--Estonian", "vie--Vietnamese", "heb--Hebrew", "tam--Tamil", "rus--Russian", "spa--Spanish", "fin--Finnish", "epo--Esperanto", "lit--Lithuanian", "scc--Serbian", "hun--Hungarian", "pob--Portuguese (BR)", "ast--Asturian", "ben--Bengali", "hin--Hindi", "mon--Mongolian", "aze--Azerbaijani", "pom--Portuguese (MZ)", "arm--Armenian", "alb--Albanian", "khm--Khmer", "afr--Afrikaans", "lav--Latvian", "geo--Georgian", "nor--Norwegian", "ger--German", "bur--Burmese", "chi--Chinese (simplified)", "mac--Macedonian", "mne--Montenegrin", "tgl--Tagalog", "por--Portuguese", "zht--Chinese (traditional)", "bre--Breton", "kaz--Kazakh", "hrv--Croatian", "tur--Turkish", "kan--Kannada", "zhe--Chinese bilingual", "fre--French", "slo--Slovak", "ltz--Luxembourgish", "dut--Dutch", "kur--Kurdish", "ice--Icelandic", "mal--Malayalam", "oci--Occitan", "syr--Syriac", "bel--Belarusian", "baq--Basque", "swa--Swahili", "jpn--Japanese", "urd--Urdu", "ukr--Ukrainian", "bul--Bulgarian", "sin--Sinhalese", "dan--Danish", "rum--Romanian", "ell--Greek", "tel--Telugu", "tha--Thai", "cze--Czech", "pol--Polish", "eng--English", "cat--Catalan", "ext--Extremaduran", "may--Malay", "slv--Slovenian", "kor--Korean", "ara--Arabic", "per--Persian"};

    /* renamed from: R1, reason: collision with root package name */
    public String f15134R1 = "";

    /* renamed from: S1, reason: collision with root package name */
    public final int[] f15137S1 = {R.color.md_red_500, R.color.md_pink_500, R.color.md_purple_500, R.color.md_deep_purple_500, R.color.md_indigo_500, R.color.md_blue_500, R.color.md_light_blue_500, R.color.md_cyan_500, R.color.md_teal_500, R.color.md_green_500, R.color.md_light_green_500, R.color.md_lime_500, R.color.md_yellow_500, R.color.md_amber_500, R.color.md_orange_500, R.color.md_deep_orange_500, R.color.md_brown_500, R.color.md_grey_500, R.color.md_blue_grey_500, R.color.md_white_1};

    /* renamed from: W1, reason: collision with root package name */
    public final ArrayList f15149W1 = new ArrayList();

    /* renamed from: Z1, reason: collision with root package name */
    public final CharSequence[] f15158Z1 = {"18sp", "23sp", "28sp", "33sp", "38sp", "48sp", "58sp"};

    /* renamed from: a2, reason: collision with root package name */
    public final CharSequence[] f15161a2 = {"Default Charset", "UTF-8 utf-8", "UTF-16 LE utf-16 le", "UTF-16 BE utf-16 be", "Western (Windows 1252) windows-1252", "Western (ISO 8859-1) iso-8859-1", "Western (ISO 8859-3) iso-8859-3", "Western (ISO 8859-15) iso-8859-15", "Western (Mac Roman) macroman", "Arabic (Windows 1256) windows-1256", "Arabic (ISO 8859-6) iso-8859-6", "Baltic (Windows 1257) windows-1257", "Baltic (ISO 8859-4) iso-8859-4", "Celtic (ISO 8859-14) iso-8859-14", "Central European (Windows 1250) windows-1250", "Central European (ISO 8859-2) iso-8859-2", "Central European (CP 852) cp-852", "Cyrillic (Windows 1251) windows-1251", "Cyrillic (CP 866) cp-866", "Cyrillic (ISO 8859-5) iso-8859-5", "Cyrillic (KO18-R) koi8-r", "Cyrillic (KOI8-U) koi8-u", "Estonian (ISO 8859-13) iso-8859-13", "Greek (Windows 1253) windows-1253", "Greek (ISO 8859-7) iso-8859-7", "Hebrew (Windows 1255) windows-1255", "Hebrew (ISO 8859-8) iso-8859-8", "Nordic (ISO 8859-10) iso-8859-10", "Romanian (ISO 8859-16) iso-8859-16", "Turkish (Windows 1254) windows-1254", "Turkish (ISO 8859-9) iso-8859-9", "Vietnamese (Windows 1258) windows-1258", "Simplified Chinese (GBK) gbk", "Simplified Chinese (GB18030) gb18030", "Traditional Chinese (Big5) c950", "Traditional Chinese (Big5-HKSCS) big5-hkscs", "Japanese (Shift JIS) Shift_JIS", "Japanese (EUC-JP) EUC_JP_LINUX", "Korean (EUC-KR) euc-kr", "Thai (Windows 874) windows-874", "Latin/Thai (ISO 8859-11) iso-8859-11", "Cyrillic (KOI8-RU) koi8-ru", "Tajik (KO18-T) KOI8_R", "Simplified Chinese (GB 2312) EUC_CN", "Nordic DOS (CP 865) Cp865", "Western European DOS (CP 850) cp850"};

    public static boolean deleteDir(File file) {
        if (file == null || !file.isDirectory()) {
            if (file == null || !file.isFile()) {
                return false;
            }
            return file.delete();
        }
        String[] list = file.list();
        if (list != null) {
            for (String str : list) {
                if (!deleteDir(new File(file, str))) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    public static String humanReadableByteCountBin(long j7) {
        long abs = j7 == Long.MIN_VALUE ? Long.MAX_VALUE : Math.abs(j7);
        if (abs < 1024) {
            return j7 + " B";
        }
        StringCharacterIterator stringCharacterIterator = new StringCharacterIterator("KMGTPE");
        long j8 = abs;
        for (int i2 = 40; i2 >= 0 && abs > (1152865209611504844 >> i2); i2 -= 10) {
            j8 >>= 10;
            stringCharacterIterator.next();
        }
        return String.format("%.1f %ciB", Double.valueOf((j8 * Long.signum(j7)) / 1024.0d), Character.valueOf(stringCharacterIterator.current()));
    }

    public final void e(final String str, final boolean z6) {
        ArrayList arrayList = this.f15149W1;
        arrayList.clear();
        for (int i2 : this.f15137S1) {
            ColorItem colorItem = new ColorItem();
            colorItem.colorID = i2;
            if (App.getInstance().f14440s.getInt(str, !z6 ? R.color.md_deep_orange_500 : R.color.md_white_1) == i2) {
                colorItem.isChecked = true;
            }
            arrayList.add(colorItem);
        }
        View inflate = getLayoutInflater().inflate(R.layout.color_chooser_dialog, (ViewGroup) null);
        this.f15143U1 = inflate;
        this.f15140T1 = (RecyclerView) inflate.findViewById(R.id.recyclerview);
        this.f15146V1 = new C0098w(this, arrayList, str);
        this.f15140T1.setLayoutManager(new GridLayoutManager(this, 5));
        this.f15140T1.setAdapter(this.f15146V1);
        DialogInterfaceC0839s create = new r(new ContextThemeWrapper(this, R.style.AlertDialogCustom)).create();
        create.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: y4.d1
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i7 = SettingsActivity.f15080c2;
                SettingsActivity settingsActivity = SettingsActivity.this;
                settingsActivity.getClass();
                String str2 = str;
                try {
                    if (z6) {
                        settingsActivity.f15182j.setBackgroundResource(App.getInstance().f14440s.getInt(str2, R.color.md_white_1));
                    } else {
                        settingsActivity.f15152X1.setBackgroundResource(App.getInstance().f14440s.getInt(str2, R.color.md_deep_orange_500));
                    }
                } catch (Exception unused) {
                }
            }
        });
        this.f15146V1.setAlertDialog(create);
        create.setView(this.f15143U1);
        this.f15140T1.requestFocus();
        try {
            create.show();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public final void f() {
        int i2 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
        String charSequence = this.f15218w[i2].toString();
        if (i2 == 0) {
            charSequence = i.B(charSequence, " (Includes related videos view in Player)");
        }
        this.f15210t0.setText(charSequence);
        if (i2 == 0) {
            this.f15189m.setImageResource(R.drawable.app_logo_con_icon_1);
            return;
        }
        if (i2 == 1) {
            this.f15189m.setImageResource(R.drawable.mxplayer);
            return;
        }
        if (i2 == 2) {
            this.f15189m.setImageResource(R.drawable.vlc_icon);
        } else if (i2 == 3) {
            this.f15189m.setImageResource(R.drawable.xplayer);
        } else {
            if (i2 != 4) {
                return;
            }
            this.f15189m.setImageResource(R.drawable.ic_action_play_circle_filled);
        }
    }

    public final void g() {
        f();
        i();
        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
            this.f15144V.setText("Change AdultZone PIN");
            this.f15147W.setText("Press here to change your current AdultZone PIN");
        } else {
            this.f15144V.setText("Create AdultZone PIN");
            this.f15147W.setText("Create your 4 Digits PIN to access AdultZone");
        }
    }

    public String getCacheSize() {
        return humanReadableByteCountBin(getDirSize(getCodeCacheDir()) + getDirSize(getExternalCacheDir()) + getDirSize(getCacheDir()));
    }

    public long getDirSize(File file) {
        File[] listFiles;
        long j7 = 0;
        if (file != null && file.exists() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                j7 = (file2.isDirectory() ? getDirSize(file2) : file2.length()) + j7;
            }
        }
        return j7;
    }

    public final void h() {
        int i2 = App.getInstance().f14440s.getInt("pref_tv_layout", 0);
        this.f15185k0.setText(this.f15221x[i2].toString());
        if (i2 == 0) {
            this.f15197p.setImageResource(R.drawable.poster_immersive);
        } else {
            this.f15197p.setImageResource(R.drawable.poster_classic);
        }
    }

    public final void i() {
        int i2 = App.getInstance().f14440s.getInt("player_index", 0);
        this.f15082A0.setText(this.f15218w[i2].toString());
        if (i2 == 0) {
            this.f15192n.setImageResource(R.drawable.app_logo_con_icon_1);
            return;
        }
        if (i2 == 1) {
            this.f15192n.setImageResource(R.drawable.mxplayer);
            return;
        }
        if (i2 == 2) {
            this.f15192n.setImageResource(R.drawable.vlc_icon);
        } else if (i2 == 3) {
            this.f15192n.setImageResource(R.drawable.xplayer);
        } else {
            if (i2 != 4) {
                return;
            }
            this.f15192n.setImageResource(R.drawable.ic_action_play_circle_filled);
        }
    }

    public final void j() {
        if (!App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false) || App.getInstance().f14440s.getString("trakt_avatar", "").isEmpty()) {
            try {
                if (this.f15081A != null) {
                    D.get().load(R.drawable.trakt_icon).fit().centerCrop().into(this.f15081A);
                    this.f15081A.setBorderColor(getResources().getColor(R.color.white));
                }
            } catch (Exception unused) {
            }
            this.f15123O.setText(getResources().getString(R.string.connect_with_trakt_tv_to_keep_track_of_your_watched_content));
            return;
        }
        this.f15123O.setText("You're connected with your account @" + App.getInstance().f14440s.getString("trakt_user_name", "n/A"));
        try {
            if (this.f15081A != null) {
                D.get().load(App.getInstance().f14440s.getString("trakt_avatar", "")).fit().centerCrop().into(this.f15081A);
                this.f15081A.setBorderColor(getResources().getColor(R.color.white));
            }
        } catch (Exception unused2) {
        }
    }

    public final void k(Set set, boolean z6) {
        String str;
        HashSet hashSet = new HashSet();
        hashSet.add("eng--English");
        if (set == null) {
            set = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
        }
        String str2 = "";
        String str3 = str2;
        for (String str4 : set) {
            try {
                String[] split = str4.split("--");
                String str5 = split[split.length - 1];
                str = split[0];
                str4 = str5;
            } catch (Exception e3) {
                e3.printStackTrace();
                str = "";
            }
            str2 = str2.length() > 0 ? i.C(str2, ", ", str4) : str4;
            str3 = str3.length() > 0 ? i.C(str3, ", ", str) : str;
        }
        this.f15180i0.setText(str2);
        if (z6) {
            App.getInstance().f14440s.edit().putString("sub_lang_name_1", str2).apply();
        }
        App.getInstance().f14440s.edit().putString("subtitle_code_multi_1", str3).apply();
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i7, Intent intent) {
        String stringExtra;
        super.onActivityResult(i2, i7, intent);
        if (i7 != -1 || intent == null) {
            return;
        }
        Uri data = intent.getData();
        if (i2 == 1186 && data != null) {
            String backupJson = P4.b.getBackupJson();
            try {
                ParcelFileDescriptor openFileDescriptor = getContentResolver().openFileDescriptor(data, "w");
                if (openFileDescriptor != null) {
                    FileOutputStream fileOutputStream = new FileOutputStream(openFileDescriptor.getFileDescriptor());
                    fileOutputStream.write(backupJson.getBytes());
                    fileOutputStream.close();
                    openFileDescriptor.close();
                    this.f15099G.setText("Backup Saved Successfully!");
                    Toast.makeText(this, "Backup Saved!", 0).show();
                }
            } catch (IOException e3) {
                e3.printStackTrace();
                Toast.makeText(this, "Failed to write backup file", 0).show();
            }
        }
        if (i2 != 6811 || (stringExtra = intent.getStringExtra("file_extra_data")) == null) {
            return;
        }
        File file = new File(stringExtra);
        ProgressDialog progressDialog = new ProgressDialog(this);
        progressDialog.setMessage("Restoring Data...");
        progressDialog.setCancelable(false);
        progressDialog.show();
        new Thread(new RunnableC0061y(this, file, progressDialog, 13)).start();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f15165b2) {
            SubEvent subEvent = new SubEvent();
            subEvent.encoding = App.getInstance().f14440s.getString("pref_subtitle_encoding_label", null);
            EventBus.getDefault().post(subEvent);
        }
        if (this.f15212u) {
            Intent intent = new Intent();
            intent.putExtra("result", 1100);
            setResult(1100, intent);
            finish();
        }
        if (this.f15215v) {
            App.getInstance().f14432e = true;
        }
        super.onBackPressed();
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        final int i2 = 12;
        final int i7 = 9;
        final int i8 = 10;
        final int i9 = 19;
        final int i10 = 7;
        final int i11 = 8;
        final int i12 = 5;
        final int i13 = 3;
        final int i14 = 6;
        final int i15 = 2;
        final int i16 = 1;
        super.onCreate(bundle);
        setContentView(R.layout.activity_setting);
        int i17 = 4;
        final int i18 = 0;
        RealDebridCommon.f15828m = App.getInstance().f14440s.getBoolean("IS_RD_LOGGED_IN", false);
        this.f15170e = new ArrayList();
        this.f15173f = new ArrayList();
        ArrayList arrayList = this.f15170e;
        String[] strArr = this.f15162b;
        arrayList.addAll(Arrays.asList(strArr));
        this.f15173f.addAll(Arrays.asList(strArr));
        Collections.sort(this.f15170e);
        Collections.sort(this.f15173f);
        this.f15155Y1 = new String[this.f15170e.size()];
        for (int i19 = 0; i19 < this.f15170e.size(); i19++) {
            try {
                String[] split = ((String) this.f15170e.get(i19)).split("--");
                this.f15155Y1[i19] = split[split.length - 1];
            } catch (Exception e3) {
                e3.printStackTrace();
                this.f15155Y1[i19] = (String) this.f15170e.get(i19);
            }
        }
        AssetManager assets = getAssets();
        String str = Constant.f16184b;
        this.f15203r = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        this.f15206s = Typeface.createFromAsset(getAssets(), "fonts/product_sans_bold.ttf");
        this.f15200q = new C0996j();
        this.f15227z = new CharSequence[]{"Single Language", "Multi Language"};
        this.f15218w = new CharSequence[]{"FLIX VISION Player (Default)", "MX Player", "VLC", "XPlayer", "Select Manually"};
        this.f15221x = new CharSequence[]{"MODERN", "CLASSIC"};
        this.f15224y = new CharSequence[]{"15 Seconds", "30 Seconds", "1 Minute", "2 Minutes", "3 Minutes", "4 Minutes", "5 Minutes", "6 Minutes"};
        this.f15084B = (ToggleButton) findViewById(R.id.toggle_proxy_service);
        this.f15124O0 = (LinearLayout) findViewById(R.id.setting_toggle_proxy_frame);
        this.f15226y1 = (CheckBox) findViewById(R.id.checkbox_adultzone_keep_history);
        this.f15229z1 = (CheckBox) findViewById(R.id.checkbox_sub_auto_dl);
        this.f15127P0 = (LinearLayout) findViewById(R.id.setting_torbox);
        this.f15121N0 = (LinearLayout) findViewById(R.id.setting_offcloud);
        this.f15130Q0 = (LinearLayout) findViewById(R.id.setting_adult_keep_history);
        this.f15133R0 = (LinearLayout) findViewById(R.id.setting_subtitle_auto_dl);
        this.f15083A1 = (CheckBox) findViewById(R.id.checkbox_hi_res_image);
        this.f15136S0 = (LinearLayout) findViewById(R.id.setting_high_res_layout);
        this.f15086B1 = (CheckBox) findViewById(R.id.show_movie_logo_checkbox);
        this.f15139T0 = (LinearLayout) findViewById(R.id.setting_show_logo_as_loading);
        this.f15142U0 = (LinearLayout) findViewById(R.id.setting_adult_big_pictures);
        this.f15145V0 = (LinearLayout) findViewById(R.id.setting_subtitle_text_encoding);
        this.f15087C = (TextView) findViewById(R.id.subtitle_encoding_textview);
        this.f15092D1 = (CheckBox) findViewById(R.id.hide_continue);
        this.f15089C1 = (CheckBox) findViewById(R.id.checkbox_adultzone_big_pictures);
        this.f15148W0 = (LinearLayout) findViewById(R.id.setting_hide_continue);
        this.f15168d0 = (TextView) findViewById(R.id.alldebrid_text4);
        this.f15171e0 = (TextView) findViewById(R.id.all_debrid_text2);
        this.f15174f0 = (TextView) findViewById(R.id.alldebrid_text3);
        this.f15163b0 = (TextView) findViewById(R.id.torbox_text2);
        this.f15166c0 = (TextView) findViewById(R.id.torbox_text3);
        this.f15159a0 = (TextView) findViewById(R.id.toxbox_text4);
        this.f15153Y = (TextView) findViewById(R.id.offcloud_text2);
        this.f15156Z = (TextView) findViewById(R.id.offcloud_text3);
        this.f15150X = (TextView) findViewById(R.id.offcloud_text4);
        this.f15151X0 = (LinearLayout) findViewById(R.id.setting_all_debrid);
        this.f15095E1 = (CheckBox) findViewById(R.id.show_rd_only_checkbox);
        this.f15154Y0 = (LinearLayout) findViewById(R.id.setting_show_rd_only);
        this.f15088C0 = (FrameLayout) findViewById(R.id.setting_adult_animate_frame_frame);
        this.f15085B0 = (FrameLayout) findViewById(R.id.frame_change_log);
        this.f15091D0 = (FrameLayout) findViewById(R.id.setting_sound_frame_frame);
        this.f15094E0 = (FrameLayout) findViewById(R.id.setting_classic_search_frame);
        this.f15097F0 = (FrameLayout) findViewById(R.id.setting_tv_layout_frame);
        this.f15157Z0 = (LinearLayout) findViewById(R.id.setting_classic_search);
        this.f15098F1 = (CheckBox) findViewById(R.id.checkbox_classic_search);
        this.f15099G = (TextView) findViewById(R.id.backup_location_text);
        this.f15102H = (TextView) findViewById(R.id.rd_text2);
        this.f15164b1 = (LinearLayout) findViewById(R.id.setting_real_debrid);
        this.f15105I = (TextView) findViewById(R.id.subtitle_source_textview);
        int i20 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
        this.f15105I.setText(this.f15227z[i20]);
        if (i20 > 0) {
            this.f15105I.setText(this.f15227z[i20]);
        }
        this.f15167c1 = (LinearLayout) findViewById(R.id.setting_subtitle_source);
        this.f15180i0 = (TextView) findViewById(R.id.subtitle_language_textview);
        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
            this.f15180i0.setText(this.f15155Y1[App.getInstance().f14440s.getInt("sub_lang_index_1", 19)]);
        } else {
            k(null, false);
        }
        this.f15090D = (TextView) findViewById(R.id.realdebrid_text3);
        this.f15093E = (TextView) findViewById(R.id.realdebrid_text4);
        this.f15096F = (TextView) findViewById(R.id.premiumize_text3);
        this.f15176g0 = (TextView) findViewById(R.id.premiumize_text2);
        this.f15160a1 = (LinearLayout) findViewById(R.id.setting_premiumize);
        this.f15100G0 = (FrameLayout) findViewById(R.id.setting_backup_data);
        this.f15103H0 = (FrameLayout) findViewById(R.id.setting_restore_data);
        this.f15182j = findViewById(R.id.color_template_view_subtitles);
        this.f15178h0 = (TextView) findViewById(R.id.subtitle_size_textview);
        this.f15175f1 = (LinearLayout) findViewById(R.id.setting_subtitle_language);
        this.f15172e1 = (LinearLayout) findViewById(R.id.setting_subtitle_color);
        this.f15169d1 = (LinearLayout) findViewById(R.id.setting_subtitle_text_size);
        this.f15177g1 = (LinearLayout) findViewById(R.id.setting_autoplay_minutes_frame);
        this.f15108J = (TextView) findViewById(R.id.auto_play_minutes_text);
        this.f15179h1 = (LinearLayout) findViewById(R.id.setting_autoplay_frame);
        this.f15101G1 = (CheckBox) findViewById(R.id.checkbox_auto_play_nextep);
        this.f15181i1 = (LinearLayout) findViewById(R.id.setting_sound_frame);
        this.f15106I0 = (FrameLayout) findViewById(R.id.frame_faqs);
        this.f15107I1 = (CheckBox) findViewById(R.id.checkbox_hindi_direct);
        this.f15104H1 = (CheckBox) findViewById(R.id.checkbox_sound);
        this.f15184j1 = (LinearLayout) findViewById(R.id.setting_hindi_frame_direct);
        this.f15197p = (ImageView) findViewById(R.id.tv_layout_imageview);
        this.f15185k0 = (TextView) findViewById(R.id.setting_tv_layout_text_2);
        this.f15183j0 = (TextView) findViewById(R.id.setting_tv_layout_text);
        this.f15186k1 = (LinearLayout) findViewById(R.id.setting_tv_layout);
        this.f15110J1 = (CheckBox) findViewById(R.id.checkbox_adultzone_show_related);
        this.f15114L = (TextView) findViewById(R.id.text_adultZone_related1);
        this.f15111K = (TextView) findViewById(R.id.text_adultZone_related2);
        this.f15188l1 = (LinearLayout) findViewById(R.id.setting_adult_show_related_frame);
        this.f15113K1 = (CheckBox) findViewById(R.id.checkbox_adultzone_animate);
        this.f15190m0 = (TextView) findViewById(R.id.text_adultZone_animate1);
        this.f15187l0 = (TextView) findViewById(R.id.text_adultZone_animate2);
        this.f15202q1 = (LinearLayout) findViewById(R.id.setting_adult_animate_frame);
        this.f15116L1 = (CheckBox) findViewById(R.id.checkbox_play_best_res);
        this.f15129Q = (TextView) findViewById(R.id.text_adultZone_res_1);
        this.f15132R = (TextView) findViewById(R.id.text_adultZone_res_2);
        this.f15223x1 = (LinearLayout) findViewById(R.id.setting_adult_best_res_frame);
        this.f15192n = (ImageView) findViewById(R.id.tv_player_icon);
        this.f15228z0 = (TextView) findViewById(R.id.setting_tv_player_text1);
        this.f15082A0 = (TextView) findViewById(R.id.setting_tv_player_text2);
        this.f15220w1 = (LinearLayout) findViewById(R.id.setting_tv_player);
        this.f15189m = (ImageView) findViewById(R.id.adult_player_icon);
        this.f15207s0 = (TextView) findViewById(R.id.setting_adult_player_text1);
        this.f15210t0 = (TextView) findViewById(R.id.setting_adult_player_text2);
        this.f15217v1 = (LinearLayout) findViewById(R.id.setting_adult_player);
        this.f15144V = (TextView) findViewById(R.id.setup_or_change_pin_text1);
        this.f15147W = (TextView) findViewById(R.id.setup_or_change_pin_text2);
        this.f15214u1 = (LinearLayout) findViewById(R.id.setting_set_or_change_pin);
        this.f15131Q1 = (CheckBox) findViewById(R.id.checkbox_adultzone);
        this.f15211t1 = (LinearLayout) findViewById(R.id.setting_adult_frame);
        this.f15141U = (TextView) findViewById(R.id.text_adulzone1);
        this.f15138T = (TextView) findViewById(R.id.show_current_time_text1);
        this.f15126P = (TextView) findViewById(R.id.text_hindi1);
        this.f15135S = (TextView) findViewById(R.id.text_hindi2);
        this.f15208s1 = (LinearLayout) findViewById(R.id.setting_hindi_frame);
        this.f15193n0 = (TextView) findViewById(R.id.settings_text1);
        this.f15195o0 = (TextView) findViewById(R.id.settings_text2);
        this.f15198p0 = (TextView) findViewById(R.id.settings_text3);
        this.f15201q0 = (TextView) findViewById(R.id.settings_text6);
        this.f15204r0 = (TextView) findViewById(R.id.settings_text7);
        this.f15213u0 = (TextView) findViewById(R.id.settings_text8);
        this.f15216v0 = (TextView) findViewById(R.id.settings_text9);
        this.f15219w0 = (TextView) findViewById(R.id.settings_text10);
        this.f15222x0 = (TextView) findViewById(R.id.settings_text11);
        this.f15225y0 = (TextView) findViewById(R.id.settings_text12);
        this.f15128P1 = (CheckBox) findViewById(R.id.checkbox_hindi);
        this.f15125O1 = (CheckBox) findViewById(R.id.checkbox_hide_unreleased_movies);
        this.f15205r1 = (LinearLayout) findViewById(R.id.setting_hide_unreleased_movies);
        this.f15123O = (TextView) findViewById(R.id.trakt_status_text);
        this.f15081A = (CircleImageView) findViewById(R.id.trakt_avatar);
        this.f15199p1 = (LinearLayout) findViewById(R.id.setting_trakt);
        this.f15120N = (TextView) findViewById(R.id.cache_textview);
        this.f15122N1 = (CheckBox) findViewById(R.id.show_time_checkbox);
        this.f15196o1 = (LinearLayout) findViewById(R.id.setting_show_time);
        this.f15118M0 = (FrameLayout) findViewById(R.id.version_frame);
        this.f15109J0 = (FrameLayout) findViewById(R.id.setting_update);
        this.f15112K0 = (FrameLayout) findViewById(R.id.setting_clear_cache);
        this.f15115L0 = (FrameLayout) findViewById(R.id.setting_clear_search_history);
        this.f15117M = (TextView) findViewById(R.id.version);
        this.f15191m1 = (LinearLayout) findViewById(R.id.setting_mouse_color);
        this.f15152X1 = findViewById(R.id.color_template_view);
        this.f15194n1 = (LinearLayout) findViewById(R.id.setting_hide_episodes);
        this.f15119M1 = (CheckBox) findViewById(R.id.hide_episodes);
        try {
            this.f15152X1.setBackgroundResource(App.getInstance().f14440s.getInt("mouse_toggle_color", R.color.md_deep_orange_500));
        } catch (Exception unused) {
        }
        try {
            this.f15182j.setBackgroundResource(App.getInstance().f14440s.getInt("subtitle_color", R.color.md_white_1));
        } catch (Exception unused2) {
        }
        this.f15120N.setText("Clear Cache - " + getCacheSize());
        this.f15178h0.setText(this.f15158Z1[App.getInstance().f14440s.getInt("pref_subtitle_size", 3)]);
        this.f15087C.setText(this.f15161a2[App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0)]);
        this.f15200q.applyFontToView(this.f15183j0, this.f15206s);
        this.f15200q.applyFontToView(this.f15185k0, this.f15203r);
        this.f15200q.applyFontToView(this.f15114L, this.f15203r);
        this.f15200q.applyFontToView(this.f15111K, this.f15206s);
        this.f15200q.applyFontToView(this.f15190m0, this.f15206s);
        this.f15200q.applyFontToView(this.f15187l0, this.f15203r);
        this.f15200q.applyFontToView(this.f15129Q, this.f15206s);
        this.f15200q.applyFontToView(this.f15132R, this.f15203r);
        this.f15200q.applyFontToView(this.f15228z0, this.f15206s);
        this.f15200q.applyFontToView(this.f15082A0, this.f15203r);
        this.f15200q.applyFontToView(this.f15207s0, this.f15206s);
        this.f15200q.applyFontToView(this.f15210t0, this.f15203r);
        this.f15200q.applyFontToView(this.f15144V, this.f15206s);
        this.f15200q.applyFontToView(this.f15147W, this.f15203r);
        this.f15200q.applyFontToView(this.f15141U, this.f15203r);
        this.f15200q.applyFontToView(this.f15141U, this.f15206s);
        this.f15200q.applyFontToView(this.f15117M, this.f15203r);
        this.f15200q.applyFontToView(this.f15135S, this.f15203r);
        this.f15200q.applyFontToView(this.f15193n0, this.f15203r);
        this.f15200q.applyFontToView(this.f15195o0, this.f15203r);
        this.f15200q.applyFontToView(this.f15198p0, this.f15206s);
        this.f15200q.applyFontToView(this.f15138T, this.f15206s);
        this.f15200q.applyFontToView(this.f15201q0, this.f15203r);
        this.f15200q.applyFontToView(this.f15204r0, this.f15203r);
        this.f15200q.applyFontToView(this.f15213u0, this.f15206s);
        this.f15200q.applyFontToView(this.f15216v0, this.f15203r);
        this.f15200q.applyFontToView(this.f15219w0, this.f15206s);
        this.f15200q.applyFontToView(this.f15222x0, this.f15203r);
        this.f15200q.applyFontToView(this.f15225y0, this.f15206s);
        this.f15200q.applyFontToView(this.f15126P, this.f15206s);
        this.f15200q.applyFontToView(this.f15123O, this.f15203r);
        this.f15200q.applyFontToView(this.f15120N, this.f15203r);
        this.f15108J.setText(this.f15224y[App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3)]);
        this.f15084B.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: y4.T0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21174b;

            {
                this.f21174b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z6) {
                SettingsActivity settingsActivity = this.f21174b;
                switch (i18) {
                    case 0:
                        int i21 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        App.getInstance().f14440s.edit().putBoolean("pref_proxy_consent", z6).apply();
                        Hopmn hopmn = Hopmn.getInstance(settingsActivity);
                        if (hopmn != null) {
                            hopmn.setConsent(z6);
                            break;
                        }
                        break;
                    case 1:
                        int i22 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        A.i.x(App.getInstance().f14440s, "pref_hd_posters", z6);
                        App.f14422G = z6;
                        AbstractC0995i.makeToastLong(settingsActivity, "Please Restart to see the Change", false);
                        break;
                    case 2:
                        int i23 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        A.i.x(App.getInstance().f14440s, "pref_hide_continue", z6);
                        settingsActivity.f15215v = true;
                        break;
                    case 3:
                        int i24 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        A.i.x(App.getInstance().f14440s, "pref_show_hindi_dubbed", z6);
                        if (!z6) {
                            A.i.x(App.getInstance().f14440s, "hindi_include_english", true);
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, false);
                            newInstance.setTitle("Include English Links");
                            newInstance.setMessage("Do you want to get English links too or only Hindi links? This is only for Movies");
                            newInstance.setButton1("INCLUDE ENGLISH", new A4.q(9));
                            newInstance.setButton2("ONLY HINDI", new A4.q(10));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e7) {
                                e7.printStackTrace();
                                return;
                            }
                        }
                    default:
                        int i25 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        App.getInstance().f14440s.edit().putBoolean("pref_show_adult_zone", z6).apply();
                        if (App.getInstance().f14440s.getInt("pref_tv_layout", 0) != 0) {
                            Toast.makeText(settingsActivity.getBaseContext(), "Please restart App to see the change", 1).show();
                            break;
                        }
                        break;
                }
            }
        });
        this.f15124O0.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i21 = 4;
                int i22 = 8;
                int i23 = 3;
                int i24 = 1;
                int i25 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i16) {
                    case 0:
                        int i26 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i27 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i27), i27, new Y0(settingsActivity, i24));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i21));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i28 = 0; i28 < settingsActivity.f15170e.size(); i28++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i28)).split("--");
                                    charSequenceArr[i28] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i28] = (CharSequence) settingsActivity.f15170e.get(i28);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i25 < settingsActivity.f15170e.size()) {
                                zArr[i25] = stringSet.contains((String) settingsActivity.f15170e.get(i25));
                                i25++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i29, boolean z6) {
                                    int i30 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i29] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i29);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i23));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i21));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i29 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i30 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i30), i30, new Y0(settingsActivity, i25));
                        rVar3.show();
                        break;
                    case 3:
                        int i31 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i32 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i32), i32, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i33 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i34 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i34), i34, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i35 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i22));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i36 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i37 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i37), i37, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i38 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i39 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i22));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i23));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        this.f15154Y0.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i21 = 4;
                int i22 = 8;
                int i23 = 3;
                int i24 = 1;
                int i25 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i8) {
                    case 0:
                        int i26 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i27 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i27), i27, new Y0(settingsActivity, i24));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i21));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i28 = 0; i28 < settingsActivity.f15170e.size(); i28++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i28)).split("--");
                                    charSequenceArr[i28] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i28] = (CharSequence) settingsActivity.f15170e.get(i28);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i25 < settingsActivity.f15170e.size()) {
                                zArr[i25] = stringSet.contains((String) settingsActivity.f15170e.get(i25));
                                i25++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i29, boolean z6) {
                                    int i30 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i29] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i29);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i23));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i21));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i29 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i30 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i30), i30, new Y0(settingsActivity, i25));
                        rVar3.show();
                        break;
                    case 3:
                        int i31 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i32 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i32), i32, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i33 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i34 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i34), i34, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i35 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i22));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i36 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i37 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i37), i37, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i38 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i39 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i22));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i23));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        this.f15142U0.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i21 = 4;
                int i22 = 8;
                int i23 = 3;
                int i24 = 1;
                int i25 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i2) {
                    case 0:
                        int i26 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i27 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i27), i27, new Y0(settingsActivity, i24));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i21));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i28 = 0; i28 < settingsActivity.f15170e.size(); i28++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i28)).split("--");
                                    charSequenceArr[i28] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i28] = (CharSequence) settingsActivity.f15170e.get(i28);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i25 < settingsActivity.f15170e.size()) {
                                zArr[i25] = stringSet.contains((String) settingsActivity.f15170e.get(i25));
                                i25++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i29, boolean z6) {
                                    int i30 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i29] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i29);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i23));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i21));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i29 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i30 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i30), i30, new Y0(settingsActivity, i25));
                        rVar3.show();
                        break;
                    case 3:
                        int i31 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i32 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i32), i32, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i33 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i34 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i34), i34, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i35 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i22));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i36 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i37 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i37), i37, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i38 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i39 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i22));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i23));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        final int i21 = 18;
        this.f15139T0.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i212 = 4;
                int i22 = 8;
                int i23 = 3;
                int i24 = 1;
                int i25 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i21) {
                    case 0:
                        int i26 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i27 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i27), i27, new Y0(settingsActivity, i24));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i28 = 0; i28 < settingsActivity.f15170e.size(); i28++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i28)).split("--");
                                    charSequenceArr[i28] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i28] = (CharSequence) settingsActivity.f15170e.get(i28);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i25 < settingsActivity.f15170e.size()) {
                                zArr[i25] = stringSet.contains((String) settingsActivity.f15170e.get(i25));
                                i25++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i29, boolean z6) {
                                    int i30 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i29] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i29);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i23));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i29 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i30 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i30), i30, new Y0(settingsActivity, i25));
                        rVar3.show();
                        break;
                    case 3:
                        int i31 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i32 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i32), i32, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i33 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i34 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i34), i34, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i35 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i22));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i36 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i37 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i37), i37, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i38 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i39 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i22));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i23));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        this.f15136S0.setOnClickListener(new W0(this, i18));
        this.f15133R0.setOnClickListener(new W0(this, i10));
        this.f15130Q0.setOnClickListener(new W0(this, i11));
        this.f15157Z0.setOnClickListener(new W0(this, i7));
        this.f15100G0.setOnClickListener(new W0(this, i8));
        this.f15103H0.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i212 = 4;
                int i22 = 8;
                int i23 = 3;
                int i24 = 1;
                int i25 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i7) {
                    case 0:
                        int i26 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i27 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i27), i27, new Y0(settingsActivity, i24));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i28 = 0; i28 < settingsActivity.f15170e.size(); i28++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i28)).split("--");
                                    charSequenceArr[i28] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i28] = (CharSequence) settingsActivity.f15170e.get(i28);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i25 < settingsActivity.f15170e.size()) {
                                zArr[i25] = stringSet.contains((String) settingsActivity.f15170e.get(i25));
                                i25++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i29, boolean z6) {
                                    int i30 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i29] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i29);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i23));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i29 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i30 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i30), i30, new Y0(settingsActivity, i25));
                        rVar3.show();
                        break;
                    case 3:
                        int i31 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i32 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i32), i32, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i33 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i34 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i34), i34, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i35 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i22));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i36 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i37 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i37), i37, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i38 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i39 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i22));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i23));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        final int i22 = 11;
        this.f15085B0.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i212 = 4;
                int i222 = 8;
                int i23 = 3;
                int i24 = 1;
                int i25 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i22) {
                    case 0:
                        int i26 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i27 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i27), i27, new Y0(settingsActivity, i24));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i28 = 0; i28 < settingsActivity.f15170e.size(); i28++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i28)).split("--");
                                    charSequenceArr[i28] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i28] = (CharSequence) settingsActivity.f15170e.get(i28);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i25 < settingsActivity.f15170e.size()) {
                                zArr[i25] = stringSet.contains((String) settingsActivity.f15170e.get(i25));
                                i25++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i29, boolean z6) {
                                    int i30 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i29] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i29);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i23));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i29 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i30 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i30), i30, new Y0(settingsActivity, i25));
                        rVar3.show();
                        break;
                    case 3:
                        int i31 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i32 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i32), i32, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i33 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i34 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i34), i34, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i35 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i222));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i36 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i37 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i37), i37, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i38 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i39 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i222));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i23));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        final int i23 = 14;
        this.f15106I0.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i212 = 4;
                int i222 = 8;
                int i232 = 3;
                int i24 = 1;
                int i25 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i23) {
                    case 0:
                        int i26 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i27 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i27), i27, new Y0(settingsActivity, i24));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i28 = 0; i28 < settingsActivity.f15170e.size(); i28++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i28)).split("--");
                                    charSequenceArr[i28] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i28] = (CharSequence) settingsActivity.f15170e.get(i28);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i25 < settingsActivity.f15170e.size()) {
                                zArr[i25] = stringSet.contains((String) settingsActivity.f15170e.get(i25));
                                i25++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i29, boolean z6) {
                                    int i30 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i29] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i29);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i232));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i29 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i30 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i30), i30, new Y0(settingsActivity, i25));
                        rVar3.show();
                        break;
                    case 3:
                        int i31 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i32 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i32), i32, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i33 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i34 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i34), i34, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i35 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i222));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i36 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i37 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i37), i37, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i38 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i39 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i222));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i232));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        final int i24 = 24;
        this.f15220w1.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i212 = 4;
                int i222 = 8;
                int i232 = 3;
                int i242 = 1;
                int i25 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i24) {
                    case 0:
                        int i26 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i27 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i27), i27, new Y0(settingsActivity, i242));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i28 = 0; i28 < settingsActivity.f15170e.size(); i28++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i28)).split("--");
                                    charSequenceArr[i28] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i28] = (CharSequence) settingsActivity.f15170e.get(i28);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i25 < settingsActivity.f15170e.size()) {
                                zArr[i25] = stringSet.contains((String) settingsActivity.f15170e.get(i25));
                                i25++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i29, boolean z6) {
                                    int i30 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i29] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i29);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i232));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i29 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i30 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i30), i30, new Y0(settingsActivity, i25));
                        rVar3.show();
                        break;
                    case 3:
                        int i31 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i32 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i32), i32, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i33 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i34 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i34), i34, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i35 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i222));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i36 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i37 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i37), i37, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i38 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i39 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i222));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i232));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        this.f15160a1.setOnClickListener(new W0(this, i17));
        this.f15151X0.setOnClickListener(new W0(this, 11));
        this.f15127P0.setOnClickListener(new W0(this, 16));
        this.f15121N0.setOnClickListener(new W0(this, i9));
        this.f15186k1.setOnClickListener(new W0(this, 22));
        this.f15175f1.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i212 = 4;
                int i222 = 8;
                int i232 = 3;
                int i242 = 1;
                int i25 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i18) {
                    case 0:
                        int i26 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i27 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i27), i27, new Y0(settingsActivity, i242));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i28 = 0; i28 < settingsActivity.f15170e.size(); i28++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i28)).split("--");
                                    charSequenceArr[i28] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i28] = (CharSequence) settingsActivity.f15170e.get(i28);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i25 < settingsActivity.f15170e.size()) {
                                zArr[i25] = stringSet.contains((String) settingsActivity.f15170e.get(i25));
                                i25++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i29, boolean z6) {
                                    int i30 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i29] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i29);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i232));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i29 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i30 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i30), i30, new Y0(settingsActivity, i25));
                        rVar3.show();
                        break;
                    case 3:
                        int i31 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i32 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i32), i32, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i33 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i34 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i34), i34, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i35 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i222));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i36 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i37 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i37), i37, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i38 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i39 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i222));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i232));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        this.f15169d1.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i212 = 4;
                int i222 = 8;
                int i232 = 3;
                int i242 = 1;
                int i25 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i15) {
                    case 0:
                        int i26 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i27 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i27), i27, new Y0(settingsActivity, i242));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i28 = 0; i28 < settingsActivity.f15170e.size(); i28++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i28)).split("--");
                                    charSequenceArr[i28] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i28] = (CharSequence) settingsActivity.f15170e.get(i28);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i25 < settingsActivity.f15170e.size()) {
                                zArr[i25] = stringSet.contains((String) settingsActivity.f15170e.get(i25));
                                i25++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i29, boolean z6) {
                                    int i30 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i29] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i29);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i232));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i29 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i30 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i30), i30, new Y0(settingsActivity, i25));
                        rVar3.show();
                        break;
                    case 3:
                        int i31 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i32 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i32), i32, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i33 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i34 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i34), i34, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i35 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i222));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i36 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i37 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i37), i37, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i38 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i39 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i222));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i232));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        this.f15145V0.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i212 = 4;
                int i222 = 8;
                int i232 = 3;
                int i242 = 1;
                int i25 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i13) {
                    case 0:
                        int i26 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i27 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i27), i27, new Y0(settingsActivity, i242));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i28 = 0; i28 < settingsActivity.f15170e.size(); i28++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i28)).split("--");
                                    charSequenceArr[i28] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i28] = (CharSequence) settingsActivity.f15170e.get(i28);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i25 < settingsActivity.f15170e.size()) {
                                zArr[i25] = stringSet.contains((String) settingsActivity.f15170e.get(i25));
                                i25++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i29, boolean z6) {
                                    int i30 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i29] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i29);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i232));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i29 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i30 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i30), i30, new Y0(settingsActivity, i25));
                        rVar3.show();
                        break;
                    case 3:
                        int i31 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i32 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i32), i32, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i33 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i34 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i34), i34, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i35 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i222));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i36 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i37 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i37), i37, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i38 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i39 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i222));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i232));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        final int i25 = 4;
        this.f15167c1.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i212 = 4;
                int i222 = 8;
                int i232 = 3;
                int i242 = 1;
                int i252 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i25) {
                    case 0:
                        int i26 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i27 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i27), i27, new Y0(settingsActivity, i242));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i28 = 0; i28 < settingsActivity.f15170e.size(); i28++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i28)).split("--");
                                    charSequenceArr[i28] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i28] = (CharSequence) settingsActivity.f15170e.get(i28);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i252 < settingsActivity.f15170e.size()) {
                                zArr[i252] = stringSet.contains((String) settingsActivity.f15170e.get(i252));
                                i252++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i29, boolean z6) {
                                    int i30 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i29] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i29);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i232));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i29 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i30 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i30), i30, new Y0(settingsActivity, i252));
                        rVar3.show();
                        break;
                    case 3:
                        int i31 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i32 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i32), i32, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i33 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i34 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i34), i34, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i35 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i222));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i36 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i37 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i37), i37, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i38 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i39 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i222));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i232));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        this.f15164b1.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i212 = 4;
                int i222 = 8;
                int i232 = 3;
                int i242 = 1;
                int i252 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i12) {
                    case 0:
                        int i26 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i27 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i27), i27, new Y0(settingsActivity, i242));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i28 = 0; i28 < settingsActivity.f15170e.size(); i28++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i28)).split("--");
                                    charSequenceArr[i28] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i28] = (CharSequence) settingsActivity.f15170e.get(i28);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i252 < settingsActivity.f15170e.size()) {
                                zArr[i252] = stringSet.contains((String) settingsActivity.f15170e.get(i252));
                                i252++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i29, boolean z6) {
                                    int i30 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i29] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i29);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i232));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i29 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i30 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i30), i30, new Y0(settingsActivity, i252));
                        rVar3.show();
                        break;
                    case 3:
                        int i31 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i32 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i32), i32, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i33 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i34 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i34), i34, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i35 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i222));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i36 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i37 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i37), i37, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i38 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i39 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i222));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i232));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        this.f15217v1.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i212 = 4;
                int i222 = 8;
                int i232 = 3;
                int i242 = 1;
                int i252 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i14) {
                    case 0:
                        int i26 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i27 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i27), i27, new Y0(settingsActivity, i242));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i28 = 0; i28 < settingsActivity.f15170e.size(); i28++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i28)).split("--");
                                    charSequenceArr[i28] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i28] = (CharSequence) settingsActivity.f15170e.get(i28);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i252 < settingsActivity.f15170e.size()) {
                                zArr[i252] = stringSet.contains((String) settingsActivity.f15170e.get(i252));
                                i252++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i29, boolean z6) {
                                    int i30 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i29] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i29);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i232));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i29 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i30 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i30), i30, new Y0(settingsActivity, i252));
                        rVar3.show();
                        break;
                    case 3:
                        int i31 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i32 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i32), i32, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i33 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i34 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i34), i34, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i35 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i222));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i36 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i37 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i37), i37, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i38 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i39 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i222));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i232));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        this.f15214u1.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i212 = 4;
                int i222 = 8;
                int i232 = 3;
                int i242 = 1;
                int i252 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i10) {
                    case 0:
                        int i26 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i27 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i27), i27, new Y0(settingsActivity, i242));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i28 = 0; i28 < settingsActivity.f15170e.size(); i28++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i28)).split("--");
                                    charSequenceArr[i28] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i28] = (CharSequence) settingsActivity.f15170e.get(i28);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i252 < settingsActivity.f15170e.size()) {
                                zArr[i252] = stringSet.contains((String) settingsActivity.f15170e.get(i252));
                                i252++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i29, boolean z6) {
                                    int i30 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i29] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i29);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i232));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i29 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i30 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i30), i30, new Y0(settingsActivity, i252));
                        rVar3.show();
                        break;
                    case 3:
                        int i31 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i32 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i32), i32, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i33 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i34 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i34), i34, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i35 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i222));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i36 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i37 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i37), i37, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i38 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i39 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i222));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i232));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        j();
        this.f15199p1.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i212 = 4;
                int i222 = 8;
                int i232 = 3;
                int i242 = 1;
                int i252 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i11) {
                    case 0:
                        int i26 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i27 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i27), i27, new Y0(settingsActivity, i242));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i28 = 0; i28 < settingsActivity.f15170e.size(); i28++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i28)).split("--");
                                    charSequenceArr[i28] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i28] = (CharSequence) settingsActivity.f15170e.get(i28);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i252 < settingsActivity.f15170e.size()) {
                                zArr[i252] = stringSet.contains((String) settingsActivity.f15170e.get(i252));
                                i252++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i29, boolean z6) {
                                    int i30 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i29] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i29);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i232));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i29 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i30 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i30), i30, new Y0(settingsActivity, i252));
                        rVar3.show();
                        break;
                    case 3:
                        int i31 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i32 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i32), i32, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i33 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i34 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i34), i34, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i35 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i222));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i36 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i37 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i37), i37, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i38 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i39 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i222));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i232));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        this.f15084B.setChecked(App.getInstance().f14440s.getBoolean("pref_proxy_consent", true));
        this.f15226y1.setChecked(App.getInstance().f14440s.getBoolean("pref_adult_zone_keep_history", true));
        this.f15229z1.setChecked(App.getInstance().f14440s.getBoolean("pref_sub_auto_dl", false));
        this.f15083A1.setChecked(App.getInstance().f14440s.getBoolean("pref_hd_posters", false));
        this.f15086B1.setChecked(App.getInstance().f14440s.getBoolean("pref_logo_as_loading_players", true));
        this.f15089C1.setChecked(App.getInstance().f14440s.getBoolean("pref_adult_show_big_pictures", false));
        this.f15122N1.setChecked(App.getInstance().f14440s.getBoolean("pref_show_time", false));
        this.f15092D1.setChecked(App.getInstance().f14440s.getBoolean("pref_hide_continue", false));
        this.f15125O1.setChecked(App.getInstance().f14440s.getBoolean("pref_hide_unreleased", true));
        this.f15104H1.setChecked(App.getInstance().f14440s.getBoolean("pref_play_intro_sound", true));
        this.f15128P1.setChecked(App.getInstance().f14440s.getBoolean("pref_show_hindi_dubbed", false));
        this.f15107I1.setChecked(App.getInstance().f14440s.getBoolean("pref_show_hindi_dubbed_direct", true));
        this.f15098F1.setChecked(App.getInstance().f14440s.getBoolean("pref_classic_search", false));
        this.f15095E1.setChecked(App.getInstance().f14440s.getBoolean("pref_show_debrid_links_only", false));
        this.f15101G1.setChecked(App.getInstance().f14440s.getBoolean("pref_auto_play_next_ep", true));
        this.f15131Q1.setChecked(App.getInstance().f14440s.getBoolean("pref_show_adult_zone", true));
        this.f15110J1.setChecked(App.getInstance().f14440s.getBoolean("pref_show_adult_zone_hide_related", true));
        this.f15119M1.setChecked(App.getInstance().f14440s.getBoolean("pref_hide_episodes", false));
        this.f15116L1.setChecked(App.getInstance().f14440s.getBoolean("pref_adult_zone_always_play_best", true));
        this.f15113K1.setChecked(App.getInstance().f14440s.getBoolean("pref_adult_zone_animate", true));
        this.f15119M1.setOnCheckedChangeListener(new V0(i18));
        this.f15089C1.setOnCheckedChangeListener(new V0(i16));
        this.f15086B1.setOnCheckedChangeListener(new V0(i15));
        this.f15083A1.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: y4.T0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21174b;

            {
                this.f21174b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z6) {
                SettingsActivity settingsActivity = this.f21174b;
                switch (i16) {
                    case 0:
                        int i212 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        App.getInstance().f14440s.edit().putBoolean("pref_proxy_consent", z6).apply();
                        Hopmn hopmn = Hopmn.getInstance(settingsActivity);
                        if (hopmn != null) {
                            hopmn.setConsent(z6);
                            break;
                        }
                        break;
                    case 1:
                        int i222 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        A.i.x(App.getInstance().f14440s, "pref_hd_posters", z6);
                        App.f14422G = z6;
                        AbstractC0995i.makeToastLong(settingsActivity, "Please Restart to see the Change", false);
                        break;
                    case 2:
                        int i232 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        A.i.x(App.getInstance().f14440s, "pref_hide_continue", z6);
                        settingsActivity.f15215v = true;
                        break;
                    case 3:
                        int i242 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        A.i.x(App.getInstance().f14440s, "pref_show_hindi_dubbed", z6);
                        if (!z6) {
                            A.i.x(App.getInstance().f14440s, "hindi_include_english", true);
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, false);
                            newInstance.setTitle("Include English Links");
                            newInstance.setMessage("Do you want to get English links too or only Hindi links? This is only for Movies");
                            newInstance.setButton1("INCLUDE ENGLISH", new A4.q(9));
                            newInstance.setButton2("ONLY HINDI", new A4.q(10));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e7) {
                                e7.printStackTrace();
                                return;
                            }
                        }
                    default:
                        int i252 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        App.getInstance().f14440s.edit().putBoolean("pref_show_adult_zone", z6).apply();
                        if (App.getInstance().f14440s.getInt("pref_tv_layout", 0) != 0) {
                            Toast.makeText(settingsActivity.getBaseContext(), "Please restart App to see the change", 1).show();
                            break;
                        }
                        break;
                }
            }
        });
        this.f15229z1.setOnCheckedChangeListener(new V0(i13));
        this.f15226y1.setOnCheckedChangeListener(new V0(4));
        this.f15104H1.setOnCheckedChangeListener(new V0(i12));
        this.f15110J1.setOnCheckedChangeListener(new V0(6));
        this.f15113K1.setOnCheckedChangeListener(new V0(i10));
        this.f15116L1.setOnCheckedChangeListener(new V0(i11));
        this.f15122N1.setOnCheckedChangeListener(new V0(i7));
        this.f15092D1.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: y4.T0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21174b;

            {
                this.f21174b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z6) {
                SettingsActivity settingsActivity = this.f21174b;
                switch (i15) {
                    case 0:
                        int i212 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        App.getInstance().f14440s.edit().putBoolean("pref_proxy_consent", z6).apply();
                        Hopmn hopmn = Hopmn.getInstance(settingsActivity);
                        if (hopmn != null) {
                            hopmn.setConsent(z6);
                            break;
                        }
                        break;
                    case 1:
                        int i222 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        A.i.x(App.getInstance().f14440s, "pref_hd_posters", z6);
                        App.f14422G = z6;
                        AbstractC0995i.makeToastLong(settingsActivity, "Please Restart to see the Change", false);
                        break;
                    case 2:
                        int i232 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        A.i.x(App.getInstance().f14440s, "pref_hide_continue", z6);
                        settingsActivity.f15215v = true;
                        break;
                    case 3:
                        int i242 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        A.i.x(App.getInstance().f14440s, "pref_show_hindi_dubbed", z6);
                        if (!z6) {
                            A.i.x(App.getInstance().f14440s, "hindi_include_english", true);
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, false);
                            newInstance.setTitle("Include English Links");
                            newInstance.setMessage("Do you want to get English links too or only Hindi links? This is only for Movies");
                            newInstance.setButton1("INCLUDE ENGLISH", new A4.q(9));
                            newInstance.setButton2("ONLY HINDI", new A4.q(10));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e7) {
                                e7.printStackTrace();
                                return;
                            }
                        }
                    default:
                        int i252 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        App.getInstance().f14440s.edit().putBoolean("pref_show_adult_zone", z6).apply();
                        if (App.getInstance().f14440s.getInt("pref_tv_layout", 0) != 0) {
                            Toast.makeText(settingsActivity.getBaseContext(), "Please restart App to see the change", 1).show();
                            break;
                        }
                        break;
                }
            }
        });
        this.f15125O1.setOnCheckedChangeListener(new V0(i8));
        this.f15128P1.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: y4.T0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21174b;

            {
                this.f21174b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z6) {
                SettingsActivity settingsActivity = this.f21174b;
                switch (i13) {
                    case 0:
                        int i212 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        App.getInstance().f14440s.edit().putBoolean("pref_proxy_consent", z6).apply();
                        Hopmn hopmn = Hopmn.getInstance(settingsActivity);
                        if (hopmn != null) {
                            hopmn.setConsent(z6);
                            break;
                        }
                        break;
                    case 1:
                        int i222 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        A.i.x(App.getInstance().f14440s, "pref_hd_posters", z6);
                        App.f14422G = z6;
                        AbstractC0995i.makeToastLong(settingsActivity, "Please Restart to see the Change", false);
                        break;
                    case 2:
                        int i232 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        A.i.x(App.getInstance().f14440s, "pref_hide_continue", z6);
                        settingsActivity.f15215v = true;
                        break;
                    case 3:
                        int i242 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        A.i.x(App.getInstance().f14440s, "pref_show_hindi_dubbed", z6);
                        if (!z6) {
                            A.i.x(App.getInstance().f14440s, "hindi_include_english", true);
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, false);
                            newInstance.setTitle("Include English Links");
                            newInstance.setMessage("Do you want to get English links too or only Hindi links? This is only for Movies");
                            newInstance.setButton1("INCLUDE ENGLISH", new A4.q(9));
                            newInstance.setButton2("ONLY HINDI", new A4.q(10));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e7) {
                                e7.printStackTrace();
                                return;
                            }
                        }
                    default:
                        int i252 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        App.getInstance().f14440s.edit().putBoolean("pref_show_adult_zone", z6).apply();
                        if (App.getInstance().f14440s.getInt("pref_tv_layout", 0) != 0) {
                            Toast.makeText(settingsActivity.getBaseContext(), "Please restart App to see the change", 1).show();
                            break;
                        }
                        break;
                }
            }
        });
        this.f15107I1.setOnCheckedChangeListener(new V0(11));
        this.f15098F1.setOnCheckedChangeListener(new V0(i2));
        final int i26 = 13;
        this.f15095E1.setOnCheckedChangeListener(new V0(i26));
        this.f15101G1.setOnCheckedChangeListener(new V0(14));
        this.f15177g1.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i212 = 4;
                int i222 = 8;
                int i232 = 3;
                int i242 = 1;
                int i252 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i26) {
                    case 0:
                        int i262 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i27 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i27), i27, new Y0(settingsActivity, i242));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i28 = 0; i28 < settingsActivity.f15170e.size(); i28++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i28)).split("--");
                                    charSequenceArr[i28] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i28] = (CharSequence) settingsActivity.f15170e.get(i28);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i252 < settingsActivity.f15170e.size()) {
                                zArr[i252] = stringSet.contains((String) settingsActivity.f15170e.get(i252));
                                i252++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i29, boolean z6) {
                                    int i30 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i29] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i29);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i232));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i29 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i30 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i30), i30, new Y0(settingsActivity, i252));
                        rVar3.show();
                        break;
                    case 3:
                        int i31 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i32 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i32), i32, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i33 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i34 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i34), i34, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i35 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i222));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i36 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i37 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i37), i37, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i38 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i39 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i222));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i232));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        final int i27 = 4;
        this.f15131Q1.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: y4.T0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21174b;

            {
                this.f21174b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z6) {
                SettingsActivity settingsActivity = this.f21174b;
                switch (i27) {
                    case 0:
                        int i212 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        App.getInstance().f14440s.edit().putBoolean("pref_proxy_consent", z6).apply();
                        Hopmn hopmn = Hopmn.getInstance(settingsActivity);
                        if (hopmn != null) {
                            hopmn.setConsent(z6);
                            break;
                        }
                        break;
                    case 1:
                        int i222 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        A.i.x(App.getInstance().f14440s, "pref_hd_posters", z6);
                        App.f14422G = z6;
                        AbstractC0995i.makeToastLong(settingsActivity, "Please Restart to see the Change", false);
                        break;
                    case 2:
                        int i232 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        A.i.x(App.getInstance().f14440s, "pref_hide_continue", z6);
                        settingsActivity.f15215v = true;
                        break;
                    case 3:
                        int i242 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        A.i.x(App.getInstance().f14440s, "pref_show_hindi_dubbed", z6);
                        if (!z6) {
                            A.i.x(App.getInstance().f14440s, "hindi_include_english", true);
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, false);
                            newInstance.setTitle("Include English Links");
                            newInstance.setMessage("Do you want to get English links too or only Hindi links? This is only for Movies");
                            newInstance.setButton1("INCLUDE ENGLISH", new A4.q(9));
                            newInstance.setButton2("ONLY HINDI", new A4.q(10));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e7) {
                                e7.printStackTrace();
                                return;
                            }
                        }
                    default:
                        int i252 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        App.getInstance().f14440s.edit().putBoolean("pref_show_adult_zone", z6).apply();
                        if (App.getInstance().f14440s.getInt("pref_tv_layout", 0) != 0) {
                            Toast.makeText(settingsActivity.getBaseContext(), "Please restart App to see the change", 1).show();
                            break;
                        }
                        break;
                }
            }
        });
        final int i28 = 15;
        this.f15188l1.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i212 = 4;
                int i222 = 8;
                int i232 = 3;
                int i242 = 1;
                int i252 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i28) {
                    case 0:
                        int i262 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i272 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i272), i272, new Y0(settingsActivity, i242));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i282 = 0; i282 < settingsActivity.f15170e.size(); i282++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i282)).split("--");
                                    charSequenceArr[i282] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i282] = (CharSequence) settingsActivity.f15170e.get(i282);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i252 < settingsActivity.f15170e.size()) {
                                zArr[i252] = stringSet.contains((String) settingsActivity.f15170e.get(i252));
                                i252++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i29, boolean z6) {
                                    int i30 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i29] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i29);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i232));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i29 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i30 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i30), i30, new Y0(settingsActivity, i252));
                        rVar3.show();
                        break;
                    case 3:
                        int i31 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i32 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i32), i32, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i33 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i34 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i34), i34, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i35 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i222));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i36 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i37 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i37), i37, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i38 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i39 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i222));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i232));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        final int i29 = 16;
        this.f15223x1.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i212 = 4;
                int i222 = 8;
                int i232 = 3;
                int i242 = 1;
                int i252 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i29) {
                    case 0:
                        int i262 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i272 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i272), i272, new Y0(settingsActivity, i242));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i282 = 0; i282 < settingsActivity.f15170e.size(); i282++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i282)).split("--");
                                    charSequenceArr[i282] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i282] = (CharSequence) settingsActivity.f15170e.get(i282);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i252 < settingsActivity.f15170e.size()) {
                                zArr[i252] = stringSet.contains((String) settingsActivity.f15170e.get(i252));
                                i252++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i292, boolean z6) {
                                    int i30 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i292] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i292);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i232));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i292 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i30 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i30), i30, new Y0(settingsActivity, i252));
                        rVar3.show();
                        break;
                    case 3:
                        int i31 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i32 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i32), i32, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i33 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i34 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i34), i34, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i35 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i222));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i36 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i37 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i37), i37, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i38 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i39 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i222));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i232));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        final int i30 = 17;
        this.f15202q1.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i212 = 4;
                int i222 = 8;
                int i232 = 3;
                int i242 = 1;
                int i252 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i30) {
                    case 0:
                        int i262 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i272 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i272), i272, new Y0(settingsActivity, i242));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i282 = 0; i282 < settingsActivity.f15170e.size(); i282++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i282)).split("--");
                                    charSequenceArr[i282] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i282] = (CharSequence) settingsActivity.f15170e.get(i282);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i252 < settingsActivity.f15170e.size()) {
                                zArr[i252] = stringSet.contains((String) settingsActivity.f15170e.get(i252));
                                i252++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i292, boolean z6) {
                                    int i302 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i292] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i292);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i232));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i292 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i302 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i302), i302, new Y0(settingsActivity, i252));
                        rVar3.show();
                        break;
                    case 3:
                        int i31 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i32 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i32), i32, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i33 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i34 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i34), i34, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i35 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i222));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i36 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i37 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i37), i37, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i38 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i39 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i222));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i232));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        this.f15181i1.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i212 = 4;
                int i222 = 8;
                int i232 = 3;
                int i242 = 1;
                int i252 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i9) {
                    case 0:
                        int i262 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i272 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i272), i272, new Y0(settingsActivity, i242));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i282 = 0; i282 < settingsActivity.f15170e.size(); i282++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i282)).split("--");
                                    charSequenceArr[i282] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i282] = (CharSequence) settingsActivity.f15170e.get(i282);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i252 < settingsActivity.f15170e.size()) {
                                zArr[i252] = stringSet.contains((String) settingsActivity.f15170e.get(i252));
                                i252++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i292, boolean z6) {
                                    int i302 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i292] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i292);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i232));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i292 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i302 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i302), i302, new Y0(settingsActivity, i252));
                        rVar3.show();
                        break;
                    case 3:
                        int i31 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i32 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i32), i32, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i33 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i34 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i34), i34, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i35 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i222));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i36 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i37 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i37), i37, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i38 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i39 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i222));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i232));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        final int i31 = 20;
        this.f15194n1.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i212 = 4;
                int i222 = 8;
                int i232 = 3;
                int i242 = 1;
                int i252 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i31) {
                    case 0:
                        int i262 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i272 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i272), i272, new Y0(settingsActivity, i242));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i282 = 0; i282 < settingsActivity.f15170e.size(); i282++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i282)).split("--");
                                    charSequenceArr[i282] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i282] = (CharSequence) settingsActivity.f15170e.get(i282);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i252 < settingsActivity.f15170e.size()) {
                                zArr[i252] = stringSet.contains((String) settingsActivity.f15170e.get(i252));
                                i252++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i292, boolean z6) {
                                    int i302 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i292] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i292);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i232));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i292 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i302 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i302), i302, new Y0(settingsActivity, i252));
                        rVar3.show();
                        break;
                    case 3:
                        int i312 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i32 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i32), i32, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i33 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i34 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i34), i34, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i35 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i222));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i36 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i37 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i37), i37, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i38 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i39 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i222));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i232));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        final int i32 = 21;
        this.f15196o1.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i212 = 4;
                int i222 = 8;
                int i232 = 3;
                int i242 = 1;
                int i252 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i32) {
                    case 0:
                        int i262 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i272 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i272), i272, new Y0(settingsActivity, i242));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i282 = 0; i282 < settingsActivity.f15170e.size(); i282++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i282)).split("--");
                                    charSequenceArr[i282] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i282] = (CharSequence) settingsActivity.f15170e.get(i282);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i252 < settingsActivity.f15170e.size()) {
                                zArr[i252] = stringSet.contains((String) settingsActivity.f15170e.get(i252));
                                i252++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i292, boolean z6) {
                                    int i302 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i292] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i292);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i232));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i292 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i302 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i302), i302, new Y0(settingsActivity, i252));
                        rVar3.show();
                        break;
                    case 3:
                        int i312 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i322 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i322), i322, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i33 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i34 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i34), i34, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i35 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i222));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i36 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i37 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i37), i37, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i38 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i39 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i222));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i232));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        final int i33 = 22;
        this.f15148W0.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i212 = 4;
                int i222 = 8;
                int i232 = 3;
                int i242 = 1;
                int i252 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i33) {
                    case 0:
                        int i262 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i272 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i272), i272, new Y0(settingsActivity, i242));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i282 = 0; i282 < settingsActivity.f15170e.size(); i282++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i282)).split("--");
                                    charSequenceArr[i282] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i282] = (CharSequence) settingsActivity.f15170e.get(i282);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i252 < settingsActivity.f15170e.size()) {
                                zArr[i252] = stringSet.contains((String) settingsActivity.f15170e.get(i252));
                                i252++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i292, boolean z6) {
                                    int i302 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i292] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i292);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i232));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i292 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i302 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i302), i302, new Y0(settingsActivity, i252));
                        rVar3.show();
                        break;
                    case 3:
                        int i312 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i322 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i322), i322, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i332 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i34 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i34), i34, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i35 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i222));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i36 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i37 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i37), i37, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i38 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i39 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i222));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i232));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        final int i34 = 23;
        this.f15205r1.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i212 = 4;
                int i222 = 8;
                int i232 = 3;
                int i242 = 1;
                int i252 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i34) {
                    case 0:
                        int i262 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i272 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i272), i272, new Y0(settingsActivity, i242));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i282 = 0; i282 < settingsActivity.f15170e.size(); i282++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i282)).split("--");
                                    charSequenceArr[i282] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i282] = (CharSequence) settingsActivity.f15170e.get(i282);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i252 < settingsActivity.f15170e.size()) {
                                zArr[i252] = stringSet.contains((String) settingsActivity.f15170e.get(i252));
                                i252++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i292, boolean z6) {
                                    int i302 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i292] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i292);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i232));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i292 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i302 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i302), i302, new Y0(settingsActivity, i252));
                        rVar3.show();
                        break;
                    case 3:
                        int i312 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i322 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i322), i322, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i332 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i342 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i342), i342, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i35 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i222));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i36 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i37 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i37), i37, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i38 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i39 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i222));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i232));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        final int i35 = 25;
        this.f15184j1.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i212 = 4;
                int i222 = 8;
                int i232 = 3;
                int i242 = 1;
                int i252 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i35) {
                    case 0:
                        int i262 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i272 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i272), i272, new Y0(settingsActivity, i242));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i282 = 0; i282 < settingsActivity.f15170e.size(); i282++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i282)).split("--");
                                    charSequenceArr[i282] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i282] = (CharSequence) settingsActivity.f15170e.get(i282);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i252 < settingsActivity.f15170e.size()) {
                                zArr[i252] = stringSet.contains((String) settingsActivity.f15170e.get(i252));
                                i252++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i292, boolean z6) {
                                    int i302 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i292] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i292);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i232));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i292 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i302 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i302), i302, new Y0(settingsActivity, i252));
                        rVar3.show();
                        break;
                    case 3:
                        int i312 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i322 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i322), i322, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i332 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i342 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i342), i342, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i352 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i222));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i36 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i37 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i37), i37, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i38 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i39 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i222));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i232));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        final int i36 = 26;
        this.f15179h1.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i212 = 4;
                int i222 = 8;
                int i232 = 3;
                int i242 = 1;
                int i252 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i36) {
                    case 0:
                        int i262 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i272 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i272), i272, new Y0(settingsActivity, i242));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i282 = 0; i282 < settingsActivity.f15170e.size(); i282++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i282)).split("--");
                                    charSequenceArr[i282] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i282] = (CharSequence) settingsActivity.f15170e.get(i282);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i252 < settingsActivity.f15170e.size()) {
                                zArr[i252] = stringSet.contains((String) settingsActivity.f15170e.get(i252));
                                i252++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i292, boolean z6) {
                                    int i302 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i292] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i292);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i232));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i292 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i302 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i302), i302, new Y0(settingsActivity, i252));
                        rVar3.show();
                        break;
                    case 3:
                        int i312 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i322 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i322), i322, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i332 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i342 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i342), i342, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i352 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i222));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i362 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i37 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i37), i37, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i38 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i39 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i222));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i232));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        final int i37 = 27;
        this.f15208s1.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i212 = 4;
                int i222 = 8;
                int i232 = 3;
                int i242 = 1;
                int i252 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i37) {
                    case 0:
                        int i262 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i272 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i272), i272, new Y0(settingsActivity, i242));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i282 = 0; i282 < settingsActivity.f15170e.size(); i282++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i282)).split("--");
                                    charSequenceArr[i282] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i282] = (CharSequence) settingsActivity.f15170e.get(i282);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i252 < settingsActivity.f15170e.size()) {
                                zArr[i252] = stringSet.contains((String) settingsActivity.f15170e.get(i252));
                                i252++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i292, boolean z6) {
                                    int i302 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i292] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i292);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i232));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i292 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i302 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i302), i302, new Y0(settingsActivity, i252));
                        rVar3.show();
                        break;
                    case 3:
                        int i312 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i322 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i322), i322, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i332 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i342 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i342), i342, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i352 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i222));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i362 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i372 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i372), i372, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i38 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i39 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i222));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i232));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        final int i38 = 28;
        this.f15211t1.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i212 = 4;
                int i222 = 8;
                int i232 = 3;
                int i242 = 1;
                int i252 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i38) {
                    case 0:
                        int i262 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i272 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i272), i272, new Y0(settingsActivity, i242));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i282 = 0; i282 < settingsActivity.f15170e.size(); i282++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i282)).split("--");
                                    charSequenceArr[i282] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i282] = (CharSequence) settingsActivity.f15170e.get(i282);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i252 < settingsActivity.f15170e.size()) {
                                zArr[i252] = stringSet.contains((String) settingsActivity.f15170e.get(i252));
                                i252++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i292, boolean z6) {
                                    int i302 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i292] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i292);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i232));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i292 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i302 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i302), i302, new Y0(settingsActivity, i252));
                        rVar3.show();
                        break;
                    case 3:
                        int i312 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i322 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i322), i322, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i332 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i342 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i342), i342, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i352 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i222));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i362 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i372 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i372), i372, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i382 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i39 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i222));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i232));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        final int i39 = 29;
        this.f15118M0.setOnClickListener(new View.OnClickListener(this) { // from class: y4.U0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SettingsActivity f21179e;

            {
                this.f21179e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i212 = 4;
                int i222 = 8;
                int i232 = 3;
                int i242 = 1;
                int i252 = 0;
                final SettingsActivity settingsActivity = this.f21179e;
                switch (i39) {
                    case 0:
                        int i262 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0) {
                            int i272 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                            e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                            rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15155Y1, i272), i272, new Y0(settingsActivity, i242));
                            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar.show();
                            break;
                        } else {
                            CharSequence[] charSequenceArr = new CharSequence[settingsActivity.f15170e.size()];
                            final boolean[] zArr = new boolean[settingsActivity.f15170e.size()];
                            for (int i282 = 0; i282 < settingsActivity.f15170e.size(); i282++) {
                                try {
                                    String[] split2 = ((String) settingsActivity.f15170e.get(i282)).split("--");
                                    charSequenceArr[i282] = split2[split2.length - 1];
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    charSequenceArr[i282] = (CharSequence) settingsActivity.f15170e.get(i282);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            hashSet.add("eng--English");
                            Set<String> stringSet = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", hashSet);
                            while (i252 < settingsActivity.f15170e.size()) {
                                zArr[i252] = stringSet.contains((String) settingsActivity.f15170e.get(i252));
                                i252++;
                            }
                            e.r rVar2 = new e.r(settingsActivity);
                            rVar2.setTitle("Subtitles Languages");
                            rVar2.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: y4.c1
                                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                public final void onClick(DialogInterface dialogInterface, int i292, boolean z6) {
                                    int i302 = SettingsActivity.f15080c2;
                                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                                    settingsActivity2.getClass();
                                    zArr[i292] = z6;
                                    String str2 = (String) settingsActivity2.f15170e.get(i292);
                                    Set<String> stringSet2 = App.getInstance().f14440s.getStringSet("prefs_sub_lang_set_1", new HashSet());
                                    if (z6) {
                                        stringSet2.add(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    } else {
                                        stringSet2.remove(str2);
                                        App.getInstance().f14440s.edit().putStringSet("prefs_sub_lang_set_1", stringSet2).apply();
                                    }
                                    App.getInstance().f14431b = true;
                                    settingsActivity2.k(stringSet2, true);
                                }
                            });
                            rVar2.setPositiveButton(settingsActivity.getString(R.string.ok_label), new Z(i232));
                            rVar2.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(i212));
                            rVar2.show();
                            break;
                        }
                    case 1:
                        settingsActivity.f15084B.performClick();
                        break;
                    case 2:
                        int i292 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i302 = App.getInstance().f14440s.getInt("pref_subtitle_size", 3);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar3.setTitle("Change Subtitle Size");
                        rVar3.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15158Z1, i302), i302, new Y0(settingsActivity, i252));
                        rVar3.show();
                        break;
                    case 3:
                        int i312 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i322 = App.getInstance().f14440s.getInt("pref_subtitle_encoding_index", 0);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar4.setTitle("Change Subtitle Encoding");
                        rVar4.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15161a2, i322), i322, new Y0(settingsActivity, 6));
                        rVar4.show();
                        break;
                    case 4:
                        int i332 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i342 = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar5.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15227z, i342), i342, new Y0(settingsActivity, 7));
                        rVar5.show();
                        break;
                    case 5:
                        int i352 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) RealDebridLoginActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                            Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                            newInstance.setTitle("Real Debrid Logout");
                            newInstance.setMessage("Do you really want to unlink your Account ?");
                            newInstance.setButton1("CANCEL", new A4.q(i222));
                            newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 17));
                            try {
                                newInstance.show(fragmentManager, "");
                                break;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return;
                            }
                        }
                    case 6:
                        int i362 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i372 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
                        e.r rVar6 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar6.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i372), i372, new Y0(settingsActivity, 2));
                        rVar6.show();
                        break;
                    case 7:
                        int i382 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                            Intent intent = new Intent(settingsActivity, (Class<?>) AdultZonePINEntryActivity.class);
                            intent.putExtra("isPINChange", true);
                            settingsActivity.startActivity(intent);
                            break;
                        } else {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AdultPINSetupActivity.class));
                            break;
                        }
                    case 8:
                        int i392 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktTvConfigActivity.class));
                            break;
                        } else if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktActivity.class));
                            break;
                        } else {
                            FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                            Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, false);
                            newInstance2.setTitle(settingsActivity.getString(R.string.trakt_tv_label));
                            newInstance2.setCancelable(false);
                            newInstance2.setMessage(settingsActivity.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                            newInstance2.setButton1("CANCEL", new A4.q(i222));
                            newInstance2.setButton2(settingsActivity.getString(R.string.action_sign_in), new W0(settingsActivity, 20));
                            try {
                                newInstance2.show(fragmentManager2, "");
                                break;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                                return;
                            }
                        }
                    case 9:
                        settingsActivity.f15103H0.setEnabled(false);
                        Intent intent2 = new Intent(settingsActivity, (Class<?>) ModernFilePickerActivity.class);
                        intent2.putExtra("picker_mode", "backup");
                        settingsActivity.startActivityForResult(intent2, 6811);
                        new Handler().postDelayed(new e1(settingsActivity), 4000L);
                        break;
                    case 10:
                        int i40 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        if (!RealDebridCommon.f15828m && !PremiumizeCommon.f15822b && !AllDebridCommon.f15806f) {
                            Toast.makeText(settingsActivity, "You have to connect a Premium account first", 0).show();
                            break;
                        } else {
                            settingsActivity.f15095E1.performClick();
                            break;
                        }
                    case 11:
                        int i41 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) ReleaseHistoryActivity.class));
                        break;
                    case 12:
                        settingsActivity.f15089C1.performClick();
                        break;
                    case 13:
                        int i42 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i43 = App.getInstance().f14440s.getInt("pref_auto_play_minutes", 3);
                        e.r rVar7 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar7.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15224y, i43), i43, new Y0(settingsActivity, 5));
                        rVar7.show();
                        break;
                    case 14:
                        int i44 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        try {
                            Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                            newInstance3.setTitle("Check our FAQs on our website flixvision.tv");
                            newInstance3.setMessage("You can also view them directly here ");
                            newInstance3.setButton1("GOT IT", new A4.o(newInstance3, 14));
                            newInstance3.setButton2("OPEN HERE", new W0(settingsActivity, 18));
                            newInstance3.show(settingsActivity.getFragmentManager(), "");
                            break;
                        } catch (Exception unused3) {
                            return;
                        }
                    case 15:
                        settingsActivity.f15110J1.performClick();
                        break;
                    case 16:
                        settingsActivity.f15116L1.performClick();
                        break;
                    case 17:
                        settingsActivity.f15113K1.performClick();
                        break;
                    case 18:
                        settingsActivity.f15086B1.performClick();
                        break;
                    case 19:
                        settingsActivity.f15104H1.performClick();
                        break;
                    case 20:
                        settingsActivity.f15119M1.performClick();
                        break;
                    case 21:
                        settingsActivity.f15122N1.performClick();
                        break;
                    case 22:
                        settingsActivity.f15092D1.performClick();
                        break;
                    case 23:
                        settingsActivity.f15125O1.performClick();
                        break;
                    case 24:
                        int i45 = SettingsActivity.f15080c2;
                        settingsActivity.getClass();
                        int i46 = App.getInstance().f14440s.getInt("player_index", 0);
                        e.r rVar8 = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                        rVar8.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15218w, i46), i46, new Y0(settingsActivity, i232));
                        rVar8.show();
                        break;
                    case 25:
                        settingsActivity.f15107I1.performClick();
                        break;
                    case 26:
                        settingsActivity.f15101G1.performClick();
                        break;
                    case 27:
                        settingsActivity.f15128P1.performClick();
                        break;
                    case 28:
                        settingsActivity.f15131Q1.performClick();
                        break;
                    default:
                        int i47 = SettingsActivity.f15080c2;
                        settingsActivity.showReleaseNoteDialog();
                        break;
                }
            }
        });
        this.f15118M0.setOnLongClickListener(new View.OnLongClickListener() { // from class: y4.X0
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                int i40 = SettingsActivity.f15080c2;
                SettingsActivity settingsActivity = SettingsActivity.this;
                settingsActivity.getClass();
                if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                    Toast.makeText(settingsActivity.getBaseContext(), App.getInstance().f14440s.getString("pref_adult_zone_pin", "N/A") + "", 1).show();
                }
                return true;
            }
        });
        this.f15191m1.setOnClickListener(new W0(this, i16));
        this.f15172e1.setOnClickListener(new W0(this, i15));
        this.f15115L0.setOnClickListener(new W0(this, i13));
        this.f15112K0.setOnClickListener(new W0(this, i12));
        this.f15109J0.setOnClickListener(new W0(this, 6));
        g();
        try {
            this.f15134R1 = getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
            this.f15117M.setText("Version: " + this.f15134R1);
        } catch (PackageManager.NameNotFoundException e7) {
            e7.printStackTrace();
        }
        h();
        this.f15186k1.requestFocus();
        if (RealDebridCommon.f15828m) {
            this.f15102H.setText("Account Linked");
            this.f15102H.setTextColor(getResources().getColor(R.color.accent));
            this.f15090D.setVisibility(0);
            this.f15093E.setVisibility(0);
        }
        if (AllDebridCommon.f15806f) {
            this.f15174f0.setVisibility(0);
            this.f15168d0.setVisibility(0);
            this.f15171e0.setText("Account Linked");
            this.f15174f0.setText("User: " + App.getInstance().f14440s.getString("ALL_DEBRID_USERNAME", ""));
            String string = App.getInstance().f14440s.getString("ALL_DEBRID_PREMIUM_UNTIL", "");
            TextView textView = this.f15168d0;
            StringBuilder sb = new StringBuilder("IsPremium: ");
            sb.append(App.getInstance().f14440s.getBoolean("ALL_DEBRID_IS_PREMIUM", false) ? i.k("true, Valid Until: ", string) : i.k("false, Valid Until: ", string));
            textView.setText(sb.toString());
        }
        if (J4.b.f1541a) {
            this.f15166c0.setVisibility(0);
            this.f15163b0.setVisibility(0);
            this.f15159a0.setVisibility(0);
            this.f15163b0.setText("Account Linked");
            this.f15166c0.setText("User: " + App.getInstance().f14440s.getString("pref_torbox_username", ""));
            String string2 = App.getInstance().f14440s.getString("pref_torbox_premium_until", "");
            TextView textView2 = this.f15159a0;
            StringBuilder sb2 = new StringBuilder("IsPremium: ");
            sb2.append(App.getInstance().f14440s.getBoolean("pref_torbox_is_premium", false) ? i.k("true, Valid Until: ", string2) : i.k("false, Valid Until: ", string2));
            textView2.setText(sb2.toString());
        }
        if (G4.b.f1174a) {
            this.f15156Z.setVisibility(0);
            this.f15153Y.setVisibility(0);
            this.f15150X.setVisibility(0);
            this.f15153Y.setText("Account Linked");
            this.f15156Z.setText("User: " + App.getInstance().f14440s.getString("pref_offcloud_username", ""));
            String string3 = App.getInstance().f14440s.getString("pref_offcloud_premium_until", "");
            this.f15150X.setText("IsPremium: " + App.getInstance().f14440s.getBoolean("pref_offcloud_is_premium", false) + ", Valid Until: " + string3);
        }
        if (App.f14424I) {
            return;
        }
        FrameLayout frameLayout = this.f15094E0;
        if (frameLayout != null) {
            frameLayout.setVisibility(8);
        }
        FrameLayout frameLayout2 = this.f15097F0;
        if (frameLayout2 != null) {
            frameLayout2.setVisibility(8);
        }
        FrameLayout frameLayout3 = this.f15091D0;
        if (frameLayout3 != null) {
            frameLayout3.setVisibility(8);
        }
        FrameLayout frameLayout4 = this.f15088C0;
        if (frameLayout4 != null) {
            frameLayout4.setVisibility(8);
        }
    }

    @Override // androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        j();
        super.onResume();
        g();
        TextView textView = this.f15102H;
        if (textView != null && RealDebridCommon.f15828m) {
            textView.setText("Account Linked");
            this.f15102H.setTextColor(getResources().getColor(R.color.accent));
            this.f15090D.setVisibility(0);
            this.f15093E.setVisibility(0);
            this.f15090D.setText("User: " + App.getInstance().f14440s.getString("REAL_DEBRID_USERNAME", "reconnect to see this info"));
            this.f15093E.setText("Status: " + App.getInstance().f14440s.getString("REAL_DEBRID_A_TYPE", "reconnect to see this info") + ", Valid until " + App.getInstance().f14440s.getString("REAL_DEBRID_EXPIRATION", "N/A"));
        }
        if (this.f15176g0 != null && PremiumizeCommon.f15822b) {
            String string = App.getInstance().f14440s.getString("PREM_PREMIUM_UNTIL", null);
            if (string != null && string.length() > 5) {
                this.f15096F.setText("Valid until: ".concat(string));
                this.f15096F.setVisibility(0);
            }
            this.f15176g0.setText("Account Linked");
            this.f15176g0.setTextColor(getResources().getColor(R.color.accent));
        }
        if (AllDebridCommon.f15806f) {
            this.f15174f0.setVisibility(0);
            this.f15168d0.setVisibility(0);
            this.f15171e0.setText("Account Linked");
            this.f15171e0.setTextColor(getResources().getColor(R.color.accent));
            this.f15174f0.setText("User: " + App.getInstance().f14440s.getString("ALL_DEBRID_USERNAME", ""));
            String string2 = App.getInstance().f14440s.getString("ALL_DEBRID_PREMIUM_UNTIL", "");
            TextView textView2 = this.f15168d0;
            StringBuilder sb = new StringBuilder("IsPremium: ");
            sb.append(App.getInstance().f14440s.getBoolean("ALL_DEBRID_IS_PREMIUM", false) ? i.k("true, Valid Until: ", string2) : i.k("false, Valid Until: ", string2));
            textView2.setText(sb.toString());
        }
        if (J4.b.f1541a) {
            this.f15166c0.setVisibility(0);
            this.f15163b0.setVisibility(0);
            this.f15159a0.setVisibility(0);
            this.f15163b0.setText("Account Linked");
            this.f15163b0.setTextColor(getResources().getColor(R.color.accent));
            this.f15166c0.setText("User: " + App.getInstance().f14440s.getString("pref_torbox_username", ""));
            String string3 = App.getInstance().f14440s.getString("pref_torbox_premium_until", "");
            TextView textView3 = this.f15159a0;
            StringBuilder sb2 = new StringBuilder("IsPremium: ");
            sb2.append(App.getInstance().f14440s.getBoolean("pref_torbox_is_premium", false) ? i.k("true, Valid Until: ", string3) : i.k("false, Valid Until: ", string3));
            textView3.setText(sb2.toString());
        }
        if (G4.b.f1174a) {
            this.f15156Z.setVisibility(0);
            this.f15153Y.setVisibility(0);
            this.f15150X.setVisibility(0);
            this.f15153Y.setText("Account Linked");
            this.f15153Y.setTextColor(getResources().getColor(R.color.accent));
            this.f15156Z.setText("User: " + App.getInstance().f14440s.getString("pref_offcloud_username", ""));
            String string4 = App.getInstance().f14440s.getString("pref_offcloud_premium_until", "");
            this.f15150X.setText("IsPremium: " + App.getInstance().f14440s.getBoolean("pref_offcloud_is_premium", false) + ", Valid Until: " + string4);
        }
    }

    public void showReleaseNoteDialog() {
        Iterator it = App.f14430z.iterator();
        String str = "";
        while (it.hasNext()) {
            str = i.B(str, (String) it.next());
        }
        r rVar = new r(this, R.style.AlertDialogCustom);
        View inflate = getLayoutInflater().inflate(R.layout.dialog_release_notes, (ViewGroup) null);
        rVar.setView(inflate);
        TextView textView = (TextView) inflate.findViewById(R.id.rn_title);
        TextView textView2 = (TextView) inflate.findViewById(R.id.rn_content);
        View findViewById = inflate.findViewById(R.id.rn_btn_ok);
        textView.setText("v" + this.f15134R1 + " Release Notes");
        textView2.setText(str);
        DialogInterfaceC0839s create = rVar.create();
        create.setCancelable(true);
        if (create.getWindow() != null) {
            create.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        }
        findViewById.setOnClickListener(new ViewOnClickListenerC0038a(create, 15));
        try {
            create.show();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }
}
