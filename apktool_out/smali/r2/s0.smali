.class public final Lr2/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/W;


# static fields
.field public static final a:Lr2/s0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lr2/s0;

    .line 2
    .line 3
    invoke-direct {v0}, Lr2/s0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lr2/s0;->a:Lr2/s0;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInstance()Lr2/s0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lr2/s0;"
        }
    .end annotation

    .line 1
    sget-object v0, Lr2/s0;->a:Lr2/s0;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public build(Lr2/f0;)Lr2/V;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/f0;",
            ")",
            "Lr2/V;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lr2/u0;->getInstance()Lr2/u0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
