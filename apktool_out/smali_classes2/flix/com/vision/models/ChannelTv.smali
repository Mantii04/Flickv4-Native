.class public Lflix/com/vision/models/ChannelTv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lflix/com/vision/models/ChannelTv;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERIALIZER:Lcom/twitter/serial/serializer/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/serial/serializer/a;"
        }
    .end annotation
.end field


# instance fields
.field public categorie_id:Ljava/lang/String;

.field public categorie_name:Ljava/lang/String;

.field public channel:Lflix/com/vision/models/Channel;

.field public description:Ljava/lang/String;

.field public group_name:Ljava/lang/String;

.field public has_played:Z

.field public id:Ljava/lang/String;

.field public is_streamable:Z

.field public label:Ljava/lang/String;

.field public lang:Ljava/lang/String;

.field public links:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/StreamUrl;",
            ">;"
        }
    .end annotation
.end field

.field public logoUrl:Ljava/lang/String;

.field public type:I

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lflix/com/vision/models/serial/TVChannelSerializer;

    .line 2
    .line 3
    invoke-direct {v0}, Lflix/com/vision/models/serial/TVChannelSerializer;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lflix/com/vision/models/ChannelTv;->SERIALIZER:Lcom/twitter/serial/serializer/a;

    .line 7
    .line 8
    new-instance v0, Lflix/com/vision/models/ChannelTv$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lflix/com/vision/models/ChannelTv$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lflix/com/vision/models/ChannelTv;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lflix/com/vision/models/ChannelTv;->is_streamable:Z

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lflix/com/vision/models/ChannelTv;->logoUrl:Ljava/lang/String;

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lflix/com/vision/models/ChannelTv;->type:I

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflix/com/vision/models/ChannelTv;->links:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lflix/com/vision/models/ChannelTv;->is_streamable:Z

    .line 3
    const-string v1, ""

    iput-object v1, p0, Lflix/com/vision/models/ChannelTv;->logoUrl:Ljava/lang/String;

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lflix/com/vision/models/ChannelTv;->type:I

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lflix/com/vision/models/ChannelTv;->links:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lflix/com/vision/models/ChannelTv;->url:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lflix/com/vision/models/ChannelTv;->logoUrl:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lflix/com/vision/models/ChannelTv;->lang:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lflix/com/vision/models/ChannelTv;->group_name:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lflix/com/vision/models/ChannelTv;->id:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lflix/com/vision/models/ChannelTv;->categorie_name:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lflix/com/vision/models/ChannelTv;->categorie_id:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lflix/com/vision/models/ChannelTv;->type:I

    .line 15
    const-class v1, Lflix/com/vision/models/StreamUrl;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lflix/com/vision/models/ChannelTv;->links:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 17
    iput-boolean v1, p0, Lflix/com/vision/models/ChannelTv;->is_streamable:Z

    return-void

    .line 18
    :cond_0
    iput-boolean v0, p0, Lflix/com/vision/models/ChannelTv;->is_streamable:Z

    return-void
.end method

.method public constructor <init>(Lflix/com/vision/models/Channel;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lflix/com/vision/models/ChannelTv;->is_streamable:Z

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lflix/com/vision/models/ChannelTv;->logoUrl:Ljava/lang/String;

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lflix/com/vision/models/ChannelTv;->type:I

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflix/com/vision/models/ChannelTv;->links:Ljava/util/ArrayList;

    .line 24
    iput-object p1, p0, Lflix/com/vision/models/ChannelTv;->channel:Lflix/com/vision/models/Channel;

    if-eqz p1, :cond_0

    .line 25
    iget-object v0, p1, Lflix/com/vision/models/Channel;->name:Ljava/lang/String;

    iput-object v0, p0, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    .line 26
    iget-object v0, p1, Lflix/com/vision/models/Channel;->logoUrl:Ljava/lang/String;

    iput-object v0, p0, Lflix/com/vision/models/ChannelTv;->logoUrl:Ljava/lang/String;

    .line 27
    iget-object p1, p1, Lflix/com/vision/models/Channel;->country_name:Ljava/lang/String;

    iput-object p1, p0, Lflix/com/vision/models/ChannelTv;->group_name:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lflix/com/vision/models/ChannelTv;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lflix/com/vision/models/ChannelTv;->is_streamable:Z

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lflix/com/vision/models/ChannelTv;->logoUrl:Ljava/lang/String;

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lflix/com/vision/models/ChannelTv;->type:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflix/com/vision/models/ChannelTv;->links:Ljava/util/ArrayList;

    .line 38
    iget-object v1, p1, Lflix/com/vision/models/ChannelTv;->url:Ljava/lang/String;

    iput-object v1, p0, Lflix/com/vision/models/ChannelTv;->url:Ljava/lang/String;

    .line 39
    iget-object v1, p1, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    iput-object v1, p0, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    .line 40
    iget-object v1, p1, Lflix/com/vision/models/ChannelTv;->logoUrl:Ljava/lang/String;

    iput-object v1, p0, Lflix/com/vision/models/ChannelTv;->logoUrl:Ljava/lang/String;

    .line 41
    iget-object v1, p1, Lflix/com/vision/models/ChannelTv;->lang:Ljava/lang/String;

    iput-object v1, p0, Lflix/com/vision/models/ChannelTv;->lang:Ljava/lang/String;

    .line 42
    iget-object v1, p1, Lflix/com/vision/models/ChannelTv;->group_name:Ljava/lang/String;

    iput-object v1, p0, Lflix/com/vision/models/ChannelTv;->group_name:Ljava/lang/String;

    .line 43
    iget-object v1, p1, Lflix/com/vision/models/ChannelTv;->id:Ljava/lang/String;

    iput-object v1, p0, Lflix/com/vision/models/ChannelTv;->id:Ljava/lang/String;

    .line 44
    iget-object v1, p1, Lflix/com/vision/models/ChannelTv;->categorie_id:Ljava/lang/String;

    iput-object v1, p0, Lflix/com/vision/models/ChannelTv;->categorie_id:Ljava/lang/String;

    .line 45
    iget-object v1, p1, Lflix/com/vision/models/ChannelTv;->categorie_name:Ljava/lang/String;

    iput-object v1, p0, Lflix/com/vision/models/ChannelTv;->categorie_name:Ljava/lang/String;

    .line 46
    iget v1, p1, Lflix/com/vision/models/ChannelTv;->type:I

    iput v1, p0, Lflix/com/vision/models/ChannelTv;->type:I

    .line 47
    iget-object p1, p1, Lflix/com/vision/models/ChannelTv;->links:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    .line 2
    .line 3
    check-cast p1, Lflix/com/vision/models/ChannelTv;

    .line 4
    .line 5
    iget-object p1, p1, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lflix/com/vision/models/ChannelTv;->url:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lflix/com/vision/models/ChannelTv;->logoUrl:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lflix/com/vision/models/ChannelTv;->lang:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lflix/com/vision/models/ChannelTv;->group_name:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lflix/com/vision/models/ChannelTv;->id:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lflix/com/vision/models/ChannelTv;->categorie_name:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lflix/com/vision/models/ChannelTv;->categorie_id:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget p2, p0, Lflix/com/vision/models/ChannelTv;->type:I

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lflix/com/vision/models/ChannelTv;->links:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    iget-boolean p2, p0, Lflix/com/vision/models/ChannelTv;->is_streamable:Z

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
