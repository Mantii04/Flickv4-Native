.class public final Lk/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ll/r1;

.field public final b:Lk/p;

.field public final c:I


# direct methods
.method public constructor <init>(Ll/r1;Lk/p;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk/i;->a:Ll/r1;

    .line 5
    .line 6
    iput-object p2, p0, Lk/i;->b:Lk/p;

    .line 7
    .line 8
    iput p3, p0, Lk/i;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/i;->a:Ll/r1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll/l1;->getListView()Landroid/widget/ListView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
