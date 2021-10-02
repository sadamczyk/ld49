with (other) {
	// This firecone should hit any enemy only once, so keep a list of the ones hit already
	if (ds_list_find_index(other.enemies_hit, id) == -1) {
		hp--;
		ds_list_add(other.enemies_hit, id);
	}
}