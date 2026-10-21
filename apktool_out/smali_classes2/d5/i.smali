.class public final Ld5/i;
.super Lh2/t;
.source "SourceFile"


# instance fields
.field public final synthetic f:Ld5/l;


# direct methods
.method public constructor <init>(Ld5/l;Ljava/lang/String;Ld5/g;LJ0/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld5/i;->f:Ld5/l;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lh2/t;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ld5/i;->f:Ld5/l;

    .line 7
    .line 8
    iget-object v1, v1, Ld5/l;->g:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "Referer"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
