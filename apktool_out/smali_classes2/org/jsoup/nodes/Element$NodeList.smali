.class final Lorg/jsoup/nodes/Element$NodeList;
.super Lorg/jsoup/helper/ChangeNotifyingArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jsoup/helper/ChangeNotifyingArrayList<",
        "Lj6/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lorg/jsoup/nodes/b;


# direct methods
.method public constructor <init>(Lorg/jsoup/nodes/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lorg/jsoup/helper/ChangeNotifyingArrayList;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/jsoup/nodes/Element$NodeList;->b:Lorg/jsoup/nodes/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onContentsChanged()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lorg/jsoup/nodes/Element$NodeList;->b:Lorg/jsoup/nodes/b;

    .line 3
    .line 4
    iput-object v0, v1, Lorg/jsoup/nodes/b;->j:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    return-void
.end method
