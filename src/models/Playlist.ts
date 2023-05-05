export interface PlaylistDB {
  id: string;
  creator_id: string;
  name: string;
  likes: number;
  dislikes: number;
  created_at: string;
  updated_at: string;
}

export interface PlaylistModel {
  id: string;
  name: string;
  likes: number;
  dislikes: number;
  createdAt: string;
  updatedAt: string;
  creator: {
    id: string;
    name: string;
  };
}

export class Playlist {
  constructor(
    private id: string,
    private name: string,
    private likes: number,
    private dislikes: number,
    private createdAt: string,
    private updatedAt: string,
    private creatorId: string,
    private creatorName: string
  ) {}

  get getId(): string {
    return this.id;
  }

  set setId(value: string) {
    this.id = value;
  }

  get getName(): string {
    return this.name;
  }

  set setName(value: string) {
    this.name = value;
  }

  get getLikes(): number {
    return this.likes;
  }

  set setLikes(value: number) {
    this.likes = value;
  }

  public addLike(): void {
    this.likes += 1;
  }

  public removeLike(): void {
    this.likes -= 1;
  }

  get getDislikes(): number {
    return this.dislikes;
  }

  set setDislikes(value: number) {
    this.dislikes = value;
  }

  public addDislike() {
    this.dislikes += 1;
  }

  public removeDislike() {
    this.dislikes -= 1;
  }

  get getCreatedAt(): string {
    return this.createdAt;
  }

  set setCreatedAt(value: string) {
    this.createdAt = value;
  }

  get getUpdatedAt(): string {
    return this.updatedAt;
  }

  set setUpdatedAt(value: string) {
    this.updatedAt = value;
  }

  get getCreatorId(): string {
    return this.creatorId;
  }

  set setCreatorId(value: string) {
    this.creatorId = value;
  }

  get getCreatorName(): string {
    return this.creatorName;
  }

  set setCreatorName(value: string) {
    this.creatorName = value;
  }

  public toDBModel(): PlaylistDB {
    return {
      id: this.id,
      creator_id: this.creatorId,
      name: this.name,
      likes: this.likes,
      dislikes: this.dislikes,
      created_at: this.createdAt,
      updated_at: this.updatedAt,
    };
  }

  public toBusinessModel(): PlaylistModel {
    return {
      id: this.id,
      name: this.name,
      likes: this.likes,
      dislikes: this.dislikes,
      createdAt: this.createdAt,
      updatedAt: this.updatedAt,
      creator: {
        id: this.creatorId,
        name: this.creatorName,
      },
    };
  }
}
