.class public final Lr2/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/V;


# static fields
.field public static final a:Lr2/u0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lr2/u0;

    .line 2
    .line 3
    invoke-direct {v0}, Lr2/u0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lr2/u0;->a:Lr2/u0;

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

.method public static getInstance()Lr2/u0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lr2/u0;"
        }
    .end annotation

    .line 1
    sget-object v0, Lr2/u0;->a:Lr2/u0;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public buildLoadData(Ljava/lang/Object;IILl2/q;)Lr2/U;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "II",
            "Ll2/q;",
            ")",
            "Lr2/U;"
        }
    .end annotation

    .line 1
    new-instance p2, Lr2/U;

    .line 2
    .line 3
    new-instance p3, LF2/d;

    .line 4
    .line 5
    invoke-direct {p3, p1}, LF2/d;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance p4, Lr2/t0;

    .line 9
    .line 10
    invoke-direct {p4, p1}, Lr2/t0;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p2, p3, p4}, Lr2/U;-><init>(Ll2/m;Lcom/bumptech/glide/load/data/e;)V

    .line 14
    .line 15
    .line 16
    return-object p2
.end method

.method public handles(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method
