.class public final LY1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LY1/g;


# instance fields
.field public final a:Lp/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LY1/g;

    .line 2
    .line 3
    invoke-direct {v0}, LY1/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LY1/g;->b:LY1/g;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lp/p;

    .line 5
    .line 6
    const/16 v1, 0x14

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lp/p;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, LY1/g;->a:Lp/p;

    .line 12
    .line 13
    return-void
.end method

.method public static getInstance()LY1/g;
    .locals 1

    .line 1
    sget-object v0, LY1/g;->b:LY1/g;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)LT1/i;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, LY1/g;->a:Lp/p;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lp/p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, LT1/i;

    .line 12
    .line 13
    return-object p1
.end method

.method public put(Ljava/lang/String;LT1/i;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, LY1/g;->a:Lp/p;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lp/p;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method
