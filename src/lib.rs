pub mod borrowed_vec {
    #[no_mangle] // Comment out if using `cargo asm`
    pub fn sum_vec(nums: &Vec<u32>) -> u32 {
        nums.iter().sum()
    }

    pub fn sum_vec_raw(nums: &Vec<u32>) -> u32 {
        let mut sum = 0;
        for num in nums {
            sum += num;
        }
        sum
    }
}

pub mod borrowed_slice {
    #[no_mangle] // Comment out if using `cargo asm`
    pub fn sum_slice(nums: &[u32]) -> u32 {
        nums.iter().sum()
    }

    pub fn sum_slice_raw(nums: &[u32]) -> u32 {
        let mut sum = 0;
        for num in nums {
            sum += num;
        }
        sum
    }
}
