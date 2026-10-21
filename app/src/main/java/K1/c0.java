package K1;

import B1.C0025e;
import android.net.Uri;
import android.os.Build;
import androidx.work.BackoffPolicy;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo$State;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;

/* loaded from: classes.dex */
public abstract class c0 {
    public static final int backoffPolicyToInt(BackoffPolicy backoffPolicy) {
        kotlin.jvm.internal.j.checkNotNullParameter(backoffPolicy, "backoffPolicy");
        int ordinal = backoffPolicy.ordinal();
        if (ordinal == 0) {
            return 0;
        }
        if (ordinal == 1) {
            return 1;
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final Set<C0025e> byteArrayToSetOfTriggers(byte[] bytes) {
        ObjectInputStream objectInputStream;
        kotlin.jvm.internal.j.checkNotNullParameter(bytes, "bytes");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (bytes.length == 0) {
            return linkedHashSet;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
        try {
            try {
                objectInputStream = new ObjectInputStream(byteArrayInputStream);
            } finally {
            }
        } catch (IOException e3) {
            e3.printStackTrace();
        }
        try {
            int readInt = objectInputStream.readInt();
            for (int i2 = 0; i2 < readInt; i2++) {
                Uri uri = Uri.parse(objectInputStream.readUTF());
                boolean readBoolean = objectInputStream.readBoolean();
                kotlin.jvm.internal.j.checkNotNullExpressionValue(uri, "uri");
                linkedHashSet.add(new C0025e(uri, readBoolean));
            }
            F5.a.closeFinally(objectInputStream, null);
            F5.a.closeFinally(byteArrayInputStream, null);
            return linkedHashSet;
        } finally {
        }
    }

    public static final BackoffPolicy intToBackoffPolicy(int i2) {
        if (i2 == 0) {
            return BackoffPolicy.f8247b;
        }
        if (i2 == 1) {
            return BackoffPolicy.f8248e;
        }
        throw new IllegalArgumentException(A.i.g(i2, "Could not convert ", " to BackoffPolicy"));
    }

    public static final NetworkType intToNetworkType(int i2) {
        if (i2 == 0) {
            return NetworkType.f8258b;
        }
        if (i2 == 1) {
            return NetworkType.f8259e;
        }
        if (i2 == 2) {
            return NetworkType.f8260f;
        }
        if (i2 == 3) {
            return NetworkType.f8261j;
        }
        if (i2 == 4) {
            return NetworkType.f8262m;
        }
        if (Build.VERSION.SDK_INT < 30 || i2 != 5) {
            throw new IllegalArgumentException(A.i.g(i2, "Could not convert ", " to NetworkType"));
        }
        return NetworkType.f8263n;
    }

    public static final OutOfQuotaPolicy intToOutOfQuotaPolicy(int i2) {
        if (i2 == 0) {
            return OutOfQuotaPolicy.f8265b;
        }
        if (i2 == 1) {
            return OutOfQuotaPolicy.f8266e;
        }
        throw new IllegalArgumentException(A.i.g(i2, "Could not convert ", " to OutOfQuotaPolicy"));
    }

    public static final WorkInfo$State intToState(int i2) {
        if (i2 == 0) {
            return WorkInfo$State.f8268b;
        }
        if (i2 == 1) {
            return WorkInfo$State.f8269e;
        }
        if (i2 == 2) {
            return WorkInfo$State.f8270f;
        }
        if (i2 == 3) {
            return WorkInfo$State.f8271j;
        }
        if (i2 == 4) {
            return WorkInfo$State.f8272m;
        }
        if (i2 == 5) {
            return WorkInfo$State.f8273n;
        }
        throw new IllegalArgumentException(A.i.g(i2, "Could not convert ", " to State"));
    }

    public static final int networkTypeToInt(NetworkType networkType) {
        kotlin.jvm.internal.j.checkNotNullParameter(networkType, "networkType");
        int ordinal = networkType.ordinal();
        if (ordinal == 0) {
            return 0;
        }
        int i2 = 1;
        if (ordinal != 1) {
            i2 = 2;
            if (ordinal != 2) {
                i2 = 3;
                if (ordinal != 3) {
                    i2 = 4;
                    if (ordinal != 4) {
                        if (Build.VERSION.SDK_INT >= 30 && networkType == NetworkType.f8263n) {
                            return 5;
                        }
                        throw new IllegalArgumentException("Could not convert " + networkType + " to int");
                    }
                }
            }
        }
        return i2;
    }

    public static final int outOfQuotaPolicyToInt(OutOfQuotaPolicy policy) {
        kotlin.jvm.internal.j.checkNotNullParameter(policy, "policy");
        int ordinal = policy.ordinal();
        if (ordinal == 0) {
            return 0;
        }
        if (ordinal == 1) {
            return 1;
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final byte[] setOfTriggersToByteArray(Set<C0025e> triggers) {
        kotlin.jvm.internal.j.checkNotNullParameter(triggers, "triggers");
        if (triggers.isEmpty()) {
            return new byte[0];
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            try {
                objectOutputStream.writeInt(triggers.size());
                for (C0025e c0025e : triggers) {
                    objectOutputStream.writeUTF(c0025e.getUri().toString());
                    objectOutputStream.writeBoolean(c0025e.isTriggeredForDescendants());
                }
                F5.a.closeFinally(objectOutputStream, null);
                F5.a.closeFinally(byteArrayOutputStream, null);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                kotlin.jvm.internal.j.checkNotNullExpressionValue(byteArray, "outputStream.toByteArray()");
                return byteArray;
            } finally {
            }
        } finally {
        }
    }

    public static final int stateToInt(WorkInfo$State state) {
        kotlin.jvm.internal.j.checkNotNullParameter(state, "state");
        int ordinal = state.ordinal();
        if (ordinal == 0) {
            return 0;
        }
        int i2 = 1;
        if (ordinal != 1) {
            i2 = 2;
            if (ordinal != 2) {
                i2 = 3;
                if (ordinal != 3) {
                    i2 = 4;
                    if (ordinal != 4) {
                        if (ordinal == 5) {
                            return 5;
                        }
                        throw new NoWhenBranchMatchedException();
                    }
                }
            }
        }
        return i2;
    }
}
