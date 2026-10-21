.class public abstract Lj1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lj1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lj1/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lj1/a;-><init>(Lkotlin/jvm/internal/g;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lj1/b;->a:Lj1/a;

    .line 8
    .line 9
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

.method public static final from(Landroid/content/Context;)Lj1/b;
    .locals 1

    .line 1
    sget-object v0, Lj1/b;->a:Lj1/a;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lj1/a;->from(Landroid/content/Context;)Lj1/b;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public abstract getMeasurementApiStatusAsync()LV3/F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV3/F;"
        }
    .end annotation
.end method

.method public abstract registerTriggerAsync(Landroid/net/Uri;)LV3/F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "LV3/F;"
        }
    .end annotation
.end method
