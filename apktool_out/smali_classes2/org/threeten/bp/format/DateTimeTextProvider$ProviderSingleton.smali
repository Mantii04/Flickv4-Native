.class Lorg/threeten/bp/format/DateTimeTextProvider$ProviderSingleton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/DateTimeTextProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProviderSingleton"
.end annotation


# static fields
.field static final PROVIDER:Lorg/threeten/bp/format/DateTimeTextProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/threeten/bp/format/DateTimeTextProvider$ProviderSingleton;->initialize()Lorg/threeten/bp/format/DateTimeTextProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lorg/threeten/bp/format/DateTimeTextProvider$ProviderSingleton;->PROVIDER:Lorg/threeten/bp/format/DateTimeTextProvider;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static initialize()Lorg/threeten/bp/format/DateTimeTextProvider;
    .locals 3

    .line 1
    invoke-static {}, Lorg/threeten/bp/format/DateTimeTextProvider;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;

    .line 6
    .line 7
    invoke-direct {v1}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    :goto_0
    invoke-static {}, Lorg/threeten/bp/format/DateTimeTextProvider;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lorg/threeten/bp/format/DateTimeTextProvider;

    .line 33
    .line 34
    return-object v0
.end method
