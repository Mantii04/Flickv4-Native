.class public final Lj6/l;
.super Lorg/jsoup/nodes/b;
.source "SourceFile"


# instance fields
.field public final r:Lorg/jsoup/select/Elements;


# direct methods
.method public constructor <init>(Lk6/f;Ljava/lang/String;Lj6/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/jsoup/nodes/b;-><init>(Lk6/f;Ljava/lang/String;Lj6/c;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lorg/jsoup/select/Elements;

    .line 5
    .line 6
    invoke-direct {p1}, Lorg/jsoup/select/Elements;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lj6/l;->r:Lorg/jsoup/select/Elements;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public addElement(Lorg/jsoup/nodes/b;)Lj6/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lj6/l;->r:Lorg/jsoup/select/Elements;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public removeChild(Lj6/p;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lj6/p;->removeChild(Lj6/p;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lj6/l;->r:Lorg/jsoup/select/Elements;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method
