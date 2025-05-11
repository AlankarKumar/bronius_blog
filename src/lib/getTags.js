import { getCollection } from "astro:content";

export async function getAllTags() {
  const posts = await getCollection("blog");
  const tagSet = new Set();

  posts.forEach((post) => {
    post.data.tags?.forEach((tag) => tagSet.add(tag));
  });

  return Array.from(tagSet).sort();
}
