package z1;

import android.os.Parcelable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p.g;

/* renamed from: z1.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1981c {

    /* renamed from: a, reason: collision with root package name */
    public final g f21394a;

    /* renamed from: b, reason: collision with root package name */
    public final g f21395b;

    /* renamed from: c, reason: collision with root package name */
    public final g f21396c;

    public AbstractC1981c(g gVar, g gVar2, g gVar3) {
        this.f21394a = gVar;
        this.f21395b = gVar2;
        this.f21396c = gVar3;
    }

    public final Class a(Class cls) {
        String name = cls.getName();
        g gVar = this.f21396c;
        Class cls2 = (Class) gVar.get(name);
        if (cls2 != null) {
            return cls2;
        }
        Class<?> cls3 = Class.forName(cls.getPackage().getName() + "." + cls.getSimpleName() + "Parcelizer", false, cls.getClassLoader());
        gVar.put(cls.getName(), cls3);
        return cls3;
    }

    public final Method b(String str) {
        g gVar = this.f21394a;
        Method method = (Method) gVar.get(str);
        if (method != null) {
            return method;
        }
        System.currentTimeMillis();
        Method declaredMethod = Class.forName(str, true, AbstractC1981c.class.getClassLoader()).getDeclaredMethod("read", AbstractC1981c.class);
        gVar.put(str, declaredMethod);
        return declaredMethod;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Method c(Class cls) {
        String name = cls.getName();
        g gVar = this.f21395b;
        Method method = (Method) gVar.get(name);
        if (method != null) {
            return method;
        }
        Class a7 = a(cls);
        System.currentTimeMillis();
        Method declaredMethod = a7.getDeclaredMethod("write", cls, AbstractC1981c.class);
        gVar.put(cls.getName(), declaredMethod);
        return declaredMethod;
    }

    public abstract void closeField();

    public abstract AbstractC1981c createSubParcel();

    public boolean isStream() {
        return false;
    }

    public abstract boolean readBoolean();

    public boolean readBoolean(boolean z6, int i2) {
        return !readField(i2) ? z6 : readBoolean();
    }

    public abstract byte[] readByteArray();

    public byte[] readByteArray(byte[] bArr, int i2) {
        return !readField(i2) ? bArr : readByteArray();
    }

    public abstract CharSequence readCharSequence();

    public CharSequence readCharSequence(CharSequence charSequence, int i2) {
        return !readField(i2) ? charSequence : readCharSequence();
    }

    public abstract boolean readField(int i2);

    public <T extends InterfaceC1983e> T readFromParcel(String str, AbstractC1981c abstractC1981c) {
        try {
            return (T) b(str).invoke(null, abstractC1981c);
        } catch (ClassNotFoundException e3) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e3);
        } catch (IllegalAccessException e7) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e7);
        } catch (NoSuchMethodException e8) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e8);
        } catch (InvocationTargetException e9) {
            if (e9.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e9.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e9);
        }
    }

    public abstract int readInt();

    public int readInt(int i2, int i7) {
        return !readField(i7) ? i2 : readInt();
    }

    public abstract <T extends Parcelable> T readParcelable();

    public <T extends Parcelable> T readParcelable(T t6, int i2) {
        return !readField(i2) ? t6 : (T) readParcelable();
    }

    public abstract String readString();

    public String readString(String str, int i2) {
        return !readField(i2) ? str : readString();
    }

    public <T extends InterfaceC1983e> T readVersionedParcelable(T t6, int i2) {
        return !readField(i2) ? t6 : (T) readVersionedParcelable();
    }

    public abstract void setOutputField(int i2);

    public abstract void writeBoolean(boolean z6);

    public void writeBoolean(boolean z6, int i2) {
        setOutputField(i2);
        writeBoolean(z6);
    }

    public abstract void writeByteArray(byte[] bArr);

    public void writeByteArray(byte[] bArr, int i2) {
        setOutputField(i2);
        writeByteArray(bArr);
    }

    public abstract void writeCharSequence(CharSequence charSequence);

    public void writeCharSequence(CharSequence charSequence, int i2) {
        setOutputField(i2);
        writeCharSequence(charSequence);
    }

    public abstract void writeInt(int i2);

    public void writeInt(int i2, int i7) {
        setOutputField(i7);
        writeInt(i2);
    }

    public abstract void writeParcelable(Parcelable parcelable);

    public void writeParcelable(Parcelable parcelable, int i2) {
        setOutputField(i2);
        writeParcelable(parcelable);
    }

    public abstract void writeString(String str);

    public void writeString(String str, int i2) {
        setOutputField(i2);
        writeString(str);
    }

    public <T extends InterfaceC1983e> void writeToParcel(T t6, AbstractC1981c abstractC1981c) {
        try {
            c(t6.getClass()).invoke(null, t6, abstractC1981c);
        } catch (ClassNotFoundException e3) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e3);
        } catch (IllegalAccessException e7) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e7);
        } catch (NoSuchMethodException e8) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e8);
        } catch (InvocationTargetException e9) {
            if (!(e9.getCause() instanceof RuntimeException)) {
                throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e9);
            }
            throw ((RuntimeException) e9.getCause());
        }
    }

    public void writeVersionedParcelable(InterfaceC1983e interfaceC1983e, int i2) {
        setOutputField(i2);
        writeVersionedParcelable(interfaceC1983e);
    }

    public <T extends InterfaceC1983e> T readVersionedParcelable() {
        String readString = readString();
        if (readString == null) {
            return null;
        }
        return (T) readFromParcel(readString, createSubParcel());
    }

    public void writeVersionedParcelable(InterfaceC1983e interfaceC1983e) {
        if (interfaceC1983e == null) {
            writeString(null);
            return;
        }
        try {
            writeString(a(interfaceC1983e.getClass()).getName());
            AbstractC1981c createSubParcel = createSubParcel();
            writeToParcel(interfaceC1983e, createSubParcel);
            createSubParcel.closeField();
        } catch (ClassNotFoundException e3) {
            throw new RuntimeException(interfaceC1983e.getClass().getSimpleName().concat(" does not have a Parcelizer"), e3);
        }
    }

    public void setSerializationFlags(boolean z6, boolean z7) {
    }
}
