import { getCollection } from "astro:content";

export async function getAllTags() {
  const posts = await getCollection("blog");
  const tagSet = new Set();

  posts.forEach((post) => {
    post.data.tags?.forEach((tag) => tagSet.add(tag));
    console.log(post.data);
  });

  return Array.from(tagSet).sort();
}
