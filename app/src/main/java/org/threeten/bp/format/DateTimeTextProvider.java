package org.threeten.bp.format;

import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import org.threeten.bp.temporal.TemporalField;

/* loaded from: classes2.dex */
public abstract class DateTimeTextProvider {
    private static final AtomicReference<DateTimeTextProvider> MUTABLE_PROVIDER = new AtomicReference<>();

    public static class ProviderSingleton {
        static final DateTimeTextProvider PROVIDER = initialize();

        public static DateTimeTextProvider initialize() {
            AtomicReference atomicReference = DateTimeTextProvider.MUTABLE_PROVIDER;
            SimpleDateTimeTextProvider simpleDateTimeTextProvider = new SimpleDateTimeTextProvider();
            while (!atomicReference.compareAndSet(null, simpleDateTimeTextProvider) && atomicReference.get() == null) {
            }
            return (DateTimeTextProvider) DateTimeTextProvider.MUTABLE_PROVIDER.get();
        }
    }

    public static DateTimeTextProvider getInstance() {
        return ProviderSingleton.PROVIDER;
    }

    public static void setInitializer(DateTimeTextProvider dateTimeTextProvider) {
        AtomicReference<DateTimeTextProvider> atomicReference = MUTABLE_PROVIDER;
        while (!atomicReference.compareAndSet(null, dateTimeTextProvider)) {
            if (atomicReference.get() != null) {
                throw new IllegalStateException("Provider was already set, possibly with a default during initialization");
            }
        }
    }

    public abstract String getText(TemporalField temporalField, long j7, TextStyle textStyle, Locale locale);

    public abstract Iterator<Map.Entry<String, Long>> getTextIterator(TemporalField temporalField, TextStyle textStyle, Locale locale);
}
