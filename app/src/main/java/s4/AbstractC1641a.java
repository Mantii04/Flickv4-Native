package s4;

import com.tuyenmonkey.mkloader.exception.InvalidNumberOfPulseException;
import r4.C1597b;
import r4.C1599d;
import r4.f;
import r4.g;
import r4.i;
import r4.k;
import r4.m;
import r4.p;
import r4.r;
import r4.t;
import r4.v;

/* renamed from: s4.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1641a {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static g generateLoaderView(String str) {
        str.getClass();
        switch (str) {
            case "FourPulse":
                try {
                    return new k(4);
                } catch (InvalidNumberOfPulseException e3) {
                    e3.printStackTrace();
                    break;
                }
            case "FishSpinner":
                return new C1599d();
            case "TwinFishesSpinner":
                return new r();
            case "Worm":
                return new v();
            case "LineSpinner":
                return new f();
            case "Radar":
                return new m();
            case "Whirlpool":
                return new t();
            case "Sharingan":
                return new p();
            case "ClassicSpinner":
                return new C1597b();
            case "ThreePulse":
                try {
                    return new k(3);
                } catch (InvalidNumberOfPulseException e7) {
                    e7.printStackTrace();
                    break;
                }
            case "FivePulse":
                try {
                    return new k(5);
                } catch (InvalidNumberOfPulseException e8) {
                    e8.printStackTrace();
                    break;
                }
            case "PhoneWave":
                return new i();
            default:
                return new C1597b();
        }
    }
}
