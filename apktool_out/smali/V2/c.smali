.class public final LV2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LV2/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, LV2/c;->a:LV2/j;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public build()LV2/d;
    .locals 2

    .line 1
    new-instance v0, LV2/d;

    .line 2
    .line 3
    iget-object v1, p0, LV2/c;->a:LV2/j;

    .line 4
    .line 5
    invoke-direct {v0, v1}, LV2/d;-><init>(LV2/j;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public setStorageMetrics(LV2/j;)LV2/c;
    .locals 0

    .line 1
    iput-object p1, p0, LV2/c;->a:LV2/j;

    .line 2
    .line 3
    return-object p0
.end method
